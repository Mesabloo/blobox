let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.13.4-20191025/packages.dhall sha256:f9eb600e5c2a439c3ac9543b1f36590696342baedab2d54ae0aa03c9447ce7d4

let overrides = {=}

let additions =
    { axios =
        { dependencies =
            [ "console"
            , "prelude"
            , "effect"
            , "foreign-generic"
            , "aff" ]
        , repo = "https://github.com/iarthstar/purescript-axios.git"
        , version = "18093e3de29b5cf1c0f4395f9698a803b00542bd"
        }
    }

in  upstream // overrides // additions
