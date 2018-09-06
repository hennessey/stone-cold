module Main exposing (main)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)



-- MAIN


main =
    Browser.element
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }


type SCVideo
    = SCVideo
        { url : String
        , startTime : String
        }


type alias Model =
    SCVideo


init : Model
init =
    SCVideo "Jyw26MMkY1E" "1:45"

-- UPDATE
type Msg = Stun | NewVideo ()
