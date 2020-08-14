#!/usr/bin/env node
import { promises as fs } from "fs";
import path from "path";
import chalk from "chalk";
import mkdirp from "mkdirp";
import cliProgress from "cli-progress";

const readdirRecursiveAbs = async (dir) => {
  const dirents = await fs.readdir(dir, { withFileTypes: true });

  const files = dirents
    .filter((dirent) => dirent.isFile())
    .map((dirent) => path.join(dir, dirent.name));

  const nestedFiles = await Promise.all(
    dirents
      .filter((dirent) => dirent.isDirectory())
      .map((dirent) => path.join(dir, dirent.name))
      .map((dir) => readdirRecursiveAbs(dir))
  );

  return [...files, ...nestedFiles].flat();
};

const symbolicRSync = async (source, target, ignorePatterns = []) => {
  const entries = await readdirRecursiveAbs(source).filter((entry) => {
    return ignorePatterns.every((pattern) => !pattern.test(entry));
  });

  const singleBar = new cliProgress.SingleBar();
  singleBar.start(entries.length, 0);
  let i = 0;

  for (const entry of entries) {
    const basename = path.basename(entry);
    const dirname = path.dirname(entry);
    const relativeDirname = path.relative(source, dirname);
    const targetDirname = path.join(target, relativeDirname);
    await mkdirp(targetDirname);
    const targetEntry = path.join(targetDirname, basename);
    await fs.symlink(entry, targetEntry);
    i++;
    singleBar.update(i);
  }

  singleBar.stop();
  return { count: entries.length };
};

const IGNORE_PATTERNS = [
  /LICENSE/,
  /README\.md/,
  /setup\.sh/,
  /\.gitconfig/,
  /\.gitignore/,
  /link/,
];

(async () => {
  if (process.env.USER === "root") {
    console.error(
      chalk.red("ERROR: You cannot run linker utility with root user.")
    );
    process.exit(1);
  }

  const SOURCE_DIR = process.argv[2] || process.cwd();
  const USER_DIR = process.argv[3] || process.env.USER_DIR;

  try {
    const stat = await symbolicRSync(SOURCE_DIR, USER_DIR, IGNORE_PATTERNS);
    console.info(
      chalk.green(
        `SUCCESS: Successfully symlinked ${stat.count} files to ${USER_DIR}`
      )
    );
  } catch (error) {
    throw error;
  }
})();
