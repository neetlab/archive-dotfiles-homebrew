#!/usr/bin/env node
import { promises as fs } from "fs";
import path from "path";
import chalk from "chalk";
import mkdirp from "mkdirp";
import cliProgress from "cli-progress";

/**
 * RSync of UNIX but symbolic link
 * @param sourceDir Source directory to link
 * @param baseDir Base directory. Used for
 * @param recursive Whether process recursively
 * @returns ⊥
 */
const symbolicRSync = async (
  sourceDir,
  sourceBaseDir,
  targetBaseDir,
  recursive = true
) => {
  const singleBar = new cliProgress.SingleBar(),
    relativeSourceDir = path.relative(sourceBaseDir, sourceDir),
    targetDir = path.join(targetBaseDir, relativeSourceDir);

  // Create corresponding dir in target
  await mkdirp(targetDir);

  const dirents = await fs.readdir(sourceDir, { withFileTypes: true });

  // Files
  const fileNames = dirents
    .filter((dirent) => dirent.isFile())
    .map((dirent) => dirent.name);

  // Directories
  const dirNames = dirents
    .filter((dirent) => dirent.isDirectory())
    .map((dirent) => dirent.name);

  // Create symlinks
  singleBar.setTotal(fileNames.length, 0);
  singleBar.start();

  let i = 0;
  for (const fileName of fileNames) {
    await fs.symlink(
      path.join(sourceDir, fileName),
      path.join(targetDir, fileName)
    );
    singleBar.update(i++);
  }

  singleBar.stop();
  if (!recursive) return;

  // continue...
  for (const dirName of dirNames) {
    await symbolicRSync(
      path.join(sourceDir, dirName),
      sourceBaseDir,
      targetDir,
      true
    );
  }
};

(async () => {
  if (process.env.USER === "root") {
    console.error(
      chalk.red("ERROR: You cannot run linker utility with root user.")
    );
    process.exit(1);
  }

  const SOURCE_DIR = process.argv[2] || process.cwd(),
    USER_DIR = process.argv[3] || process.env.USER_DIR;

  try {
    await symbolicRSync(SOURCE_DIR, SOURCE_DIR, USER_DIR, true);
  } catch (error) {
    console.error(chalk.red(error));
    process.exit(1);
  }

  console.info(chalk.green(`SUCCESS: Successfully symlinked to ${USER_DIR}`));
})();
