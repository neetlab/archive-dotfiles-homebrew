
/*----------------------------
  UI Colors
----------------------------*/
const backgroundColor = '#292D3E';
const foregroundColor = '#959DCB';
const cursorColor     = '#FFCC00';
const selectionColor  = 'rgba(93, 82, 44, 0.4)';
const borderColor     = backgroundColor;

const colors = {
	black        : '#3a4056',
	red          : '#F07178',
	green  	     : '#C3E88D',
	yellow       : '#FFCB6B',
	blue         : '#82AAFF',
	magenta      : '#C792EA',
	cyan         : '#89DDFF',
	white        : '#d0d0d0',
	lightBlack   : '#434758',
	lightRed     : '#FF8B92',
	lightGreen   : '#DDFFA7',
	lightYellow  : '#FFE585',
	lightBlue    : '#9CC4FF',
	lightMagenta : '#E1ACFF',
	lightCyan    : '#A3F7FF',
	colorCubes   : '#ffffff',
	grayscale    : foregroundColor,
}


/*----------------------------
  Preferences
----------------------------*/

module.exports = {
  localPlugins: [
  ],

  plugins: [
    'hypercwd',
    'hyper-search',
    'hyperterm-paste',
    'hyper-tabs-enhanced',
    'hyper-statusline',
    // 'hyper-font-ligatures',
  ],

  config: {
    updateChannel: 'canary',

    fontSize:        14,
    fontWeight:      'normal',
    fontWeightBold:  'bold',
    padding:         '12px 14px',
    cursorBlink:     false,
    cursorShape:     'BLOCK',

    fontFamily: [
      'FuraCode Nerd Font',
      '游ゴシック体',
    ].join(', '),

    cursorColor,
    borderColor,
    selectionColor,
    backgroundColor,
    foregroundColor,
    colors,

    shellArgs: ['--login'],
    env: {},
    bell: false,
    copyOnSelect: true,

    modifierKeys: {
      altIsMeta: true, // Emacs key binding
    },

    hyperTabs: {
      border: false,
      trafficButtons: true,
      tabIconsColored: true,
      closeAlign: 'left',
    },

    hyperStatusLine: {
      dirtyColor: colors.red,
      aheadColor: colors.green,
      footerTransparent: false,
    },
  },
};
