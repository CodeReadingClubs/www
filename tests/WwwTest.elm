module WwwTest exposing (suite)

import Expect exposing (Expectation)
import Test exposing (..)


suite : Test
suite =
    describe "True test"
        [ test "true" <|
            \() -> Expect.true "True is true." True
        ]
