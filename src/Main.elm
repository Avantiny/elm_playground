module Main exposing (..)

import Browser
import Html exposing (button, div, text)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)


main =
    Browser.sandbox { init = 0, update = update, view = view }


buttonStyle : List (Html.Attribute msg)
buttonStyle =
    [ style "background-color" "#007bff"
    , style "border" "none"
    , style "color" "white"
    , style "padding" "15px 32px"
    , style "text-align" "center"
    , style "text-decoration" "none"
    , style "display" "inline-block"
    , style "font-size" "16px"
    , style "border-radius" "4px"
    , style "box-shadow" "0 4px 6px rgba(0, 0, 0, 0.1), 0 2px 4px rgba(0, 0, 0, 0.06)"
    , style "transition" "all 0.3s ease-in-out"
    , style "margin-right" "10px"
    ]


type Msg
    = Increment
    | Decrement
    | MultiplyByTwo


update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1

        MultiplyByTwo ->
            model * 2


view model =
    div
        [ style "display" "flex"
        , style "justify-content" "center"
        , style "align-items" "center"
        , style "height" "100vh"
        , style "flex-direction" "column"
        , style "background-color" "#434654"
        ]
        [ div [ style "font-size" "100px", style "color" "white" ] [ text (String.fromInt model) ]
        , div []
            [ button
                (buttonStyle ++ [ onClick Decrement ])
                [ text "-1" ]
            , button (buttonStyle ++ [ onClick Increment ]) [ text "+1" ]
            , button (buttonStyle ++ [ onClick MultiplyByTwo ]) [ text "*2" ]
            ]
        ]
