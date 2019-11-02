module Blobox.Blob.AST where

import Prelude

import Data.Generic.Rep (class Generic)
import Foreign.Generic (defaultOptions, genericEncode, class Encode)

type Program = Array Statement

data Statement
    = Declaration Name Type
    | Definition Name (Array Name) Expr
derive instance genericStatement :: Generic Statement _

type Name = String

type Type = Unit -- Not yet implemented
-- data Type
--     = TVar Name
--     | TId Name
--     | TApp Type Type
--     | TFun Type Type
-- derive instance genericType :: Generic Type _

data Expr
    = ELit Literal
    | EId Name
    | EApp Expr Expr
    | ELam Name Expr
derive instance genericExpr :: Generic Expr _

data Literal
    = LInt Int
    | LChar Char
    | LFloat Number
derive instance genericLiteral :: Generic Literal _

--------------------------------------------------------------------------------------

instance encodeStatement :: Encode Statement where
    encode = genericEncode (defaultOptions { unwrapSingleConstructors = true })

-- instance encodeType :: Encode Type where
--     encode = genericEncode (defaultOptions { unwrapSingleConstructors = true })

instance encodeExpr :: Encode Expr where
    encode = genericEncode (defaultOptions { unwrapSingleConstructors = true })

instance encodeLiteral :: Encode Literal where
    encode = genericEncode (defaultOptions { unwrapSingleConstructors = true })