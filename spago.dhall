{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name =
    "blobox"
, dependencies =
    [ "console", "effect", "psci-support", "axios", "web-html", "web-uievents" ]
, packages =
    ./packages.dhall
, sources =
    [ "src/**/*.purs" ]
}
