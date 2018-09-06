module Main exposing (Model, Msg(..), init, main, update, view)

import Browser
import Html exposing (Html, button, div, input, text)
import Html.Events exposing (onClick, onInput)
import Html.Attributes exposing (..)


main =
    Browser.sandbox
        { init = init
        , update = update
        , view = view
        }



-- Model


type alias Model =
    Int


init : Model
init =
    0



-- Update


type Msg
    = Increment
    | Decrement
    | Reset
    | Change Int


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1

        Reset ->
            0

        Change newVal ->
            newVal



-- View


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Decrement ] [ text " - " ]
        , div [] [ text (String.fromInt model) ]
        , button [ onClick Increment ] [ text " + " ]
        , button [ onClick Reset ] [ text " Reset " ]
        , input [ placeholder "Update to: ", onInput Change ] []
        ]
