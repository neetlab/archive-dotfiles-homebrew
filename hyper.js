const colors = {
  black: "#484f58",
  red: "#ff7b72",
  green: "#3fb950",
  yellow: "#d29922",
  blue: "#58a6ff",
  magenta: "#bc8cff",
  cyan: "#39c5cf",
  white: "#b1bac4",
  lightBlack: "#6e7681",
  lightRed: "#ffa198",
  lightGreen: "#56d364",
  lightYellow: "#e3b341",
  lightBlue: "#79c0ff",
  lightMagenta: "#d2a8ff",
  lightCyan: "#56d4dd",
  lightWhite: "#f0f6fc",
};

module.exports = {
  config: {
    updateChannel: "stable",

    fontSize: 13,
    fontFamily: "'JetBrains Mono', 'Hack Nerd Font'",
    fontWeight: 400,
    fontWeightBold: 500,

    lineHeight: 1.2,
    letterSpacing: 0,
    cursorColor: "rgba(248,28,229,0.8)",

    cursorAccentColor: "#000",
    cursorShape: "BLOCK",
    cursorBlink: true,
    foregroundColor: "#c9d1d9",
    backgroundColor: "#0d1117",
    selectionColor: "rgba(248,28,229,0.3)",
    borderColor: "#333",

    css: "",
    termCSS: "",
    padding: "12px 14px",

    colors,

    shell: "",
    shellArgs: ["--login"],
    env: {},
    bell: "SOUND",
    copyOnSelect: false,
    defaultSSHApp: true,
    quickEdit: false,
    macOptionSelectionMode: "vertical",
    webGLRenderer: false,
  },

  plugins: ["hyper-font-smoothing"],
  localPlugins: ["fig-hyper-integration"],
  keymaps: {},
};
