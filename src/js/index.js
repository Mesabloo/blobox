// This file is required by the index.html file and will
// be executed in the renderer process for that window.
// No Node.js APIs are available in this process because
// `nodeIntegration` is turned off. Use `preload.js` to
// selectively enable features needed in the rendering
// process.

const path = require('path')
const index = require(path.join(__dirname, '../../output/Blobox.Index'))

let workspace
workspace = Blockly.inject('main_panel',
    { toolbox: document.getElementById('toolbox')
    , comments: true
    , sounds: false } )

