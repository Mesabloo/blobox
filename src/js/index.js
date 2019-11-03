// This file is required by the index.html file and will
// be executed in the renderer process for that window.
// No Node.js APIs are available in this process because
// `nodeIntegration` is turned off. Use `preload.js` to
// selectively enable features needed in the rendering
// process.

const path = require('path')
const index = require(path.join(__dirname, '../../output/Blobox.Index'))

const fs = require('fs')
let glob = require('glob')

let workspace

let registerBlocks = (err, json) => {
    if (err) throw err

    const data = JSON.parse(json)

    data.forEach(block => {
        Blockly.Blocks[block.type] = {
            init: function () { this.jsonInit(block) }
        }
    })
}

let read = (err, files) => {
    if (err) throw err

    files.forEach(f => fs.readFile(f, (err, data) => registerBlocks(err, data)))

    workspace = Blockly.inject('main_panel',
    { toolbox: document.getElementById('toolbox')
    , comments: true
    , sounds: false } )
}

glob("**/*_blocks.json", read)

// console.info(index.compile([{contents:["x",{}], tag:"Declaration"}]))