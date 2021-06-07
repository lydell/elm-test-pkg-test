module Example exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Html
import Test exposing (..)
import Thing


suite : Test
suite =
    test "thing" <|
        \_ ->
            Thing.thing "test"
                |> Expect.equal (Html.text "test")
