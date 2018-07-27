/*----------------------------
  UI Colors
----------------------------*/

const mono = {
  '1': 'hsl(220, 14%, 71%)',
  '2': 'hsl(220, 9%, 55%)',
  '3': 'hsl(220, 10%, 40%)',
};

const hue = {
  '1': 'hsl(187, 47%, 55%)',   // cyan
  '2': 'hsl(207, 82%, 66%)',   // blue
  '3': 'hsl(286, 60%, 67%)',   // purple
  '4': 'hsl( 95, 38%, 62%)',   // green
  '5': {
    '1': 'hsl(355, 65%, 65%)', // red 1
    '2': 'hsl( 5, 48%, 51%)',  // red 2
  },
  '6': {
    '1': 'hsl( 29, 54%, 61%)', // orange 1
    '2': 'hsl( 39, 67%, 69%)', // orange 2
  },
};

const uiFg         = 'hsl(220, 13%, 18%)';
const uiBg         = 'hsl(216, 13%, 15%)';
const uiBgDarker   = 'hsl(223, 13%, 11%)';
const uiAccent     = 'hsl(220, 86%, 64%)';

const syntaxFg     = mono['1'];
const syntaxBg     = 'hsl(220, 13%, 18%)';
const syntaxGutter = 'hsl(220, 14%, 45%)';
const syntaxGuide  = 'rgba(171, 178, 191, 0.15)';
const syntaxAccent = 'rgba(82, 139, 255, 0.24)';

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
  ],

  config: {
    updateChannel: 'canary',

    fontSize:        16,
    fontWeight:      500,
    fontWeightBold:  700,
    padding:         '12px 14px',
    cursorBlink:     false,
    cursorShape:     'BLOCK',

    fontFamily: [
      'Fira Code',
      'Hack Nerd Font',
      '游ゴシック体',
    ].join(', '),

    cursorColor:     mono['2'],
    borderColor:     syntaxGutter,
    selectionColor:  syntaxGuide,
    backgroundColor: syntaxBg,
    foregroundColor: syntaxFg,

    colors: {
      black:        mono['2'],
      red:          hue['5']['1'],
      green:        hue['4'],
      yellow:       hue['6']['1'],
      blue:         hue['2'],
      magenta:      hue['3'],
      cyan:         hue['1'],
      white:        mono['1'],
      lightBlack:   mono['2'],
      lightRed:     hue['5']['2'],
      lightGreen:   hue['4'],
      lightYellow:  hue['6']['2'],
      lightBlue:    hue['2'],
      lightMagenta: hue['3'],
      lightCyan:    hue['1'],
      lightWhite:   mono['1'],
    },

    shellArgs: ['--login'],
    env: {},
    bell: false,
    copyOnSelect: true,

    modifierKeys: {
      altIsMeta: true,
    },

    hyperTabs: {
      border: true,
      trafficButtons: true,
      tabIconsColored: true,
      closeAlign: 'left',
    },

    hyperStatusLine: {
      dirtyColor: hue['5']['1'],
      aheadColor: hue['4'],
      footerTransparent: false,
    },
  },
};
