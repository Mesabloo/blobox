exports.showForeign = function (x) {
    return x === null
        ? "<null>"
        : x === undefined
            ? "<undefined>"
            : x instanceof Date
                ? x.toString()
                : x instanceof Blob
                    ? "file[" + x.name + "]"
                    : JSON.stringify(x)
}