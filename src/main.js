const {app, BrowserWindow} = require('electron')
const path = require('path')
const child_process = require('child_process')

// Keep a global reference of the window object, if you don't, the window will
// be closed automatically when the JavaScript object is garbage collected.
let mainWindow
// Do the same for the backend web server
let backendServer

function createWindow () {
    mainWindow = new BrowserWindow({
        width: 800,
        height: 600,
        webPreferences: {
            nodeIntegration: true,
            enableRemoteModule: false,
            // preload: path.join(__dirname, 'preload.js')
        }
    })

    mainWindow.loadFile(path.join(__dirname, 'html/index.html'))

    mainWindow.on('closed', () => {
        // Dereference the window object, usually you would store windows
        // in an array if your app supports multi windows, this is the time
        // when you should delete the corresponding element.
        mainWindow = null
    })
}

function startServer() {
    backendServer = child_process.spawn(path.join(__dirname, '../bin/blobox-exe'))
}

app.on('ready', startServer)
app.on('ready', createWindow)

app.on('will-quit', () => backendServer.kill())

app.on('window-all-closed', () => {
    // On macOS it is common for applications and their menu bar
    // to stay active until the user quits explicitly with Cmd + Q
    if (process.platform !== 'darwin') app.quit()
})

app.on('activate', () => {
    // On macOS it's common to re-create a window in the app when the
    // dock icon is clicked and there are no other windows open.
    if (mainWindow === null) createWindow()
})
