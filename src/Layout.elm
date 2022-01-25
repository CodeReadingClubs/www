module Layout exposing (view)

import Element exposing (Element)
import Element.Background
import Element.Border
import Element.Font as Font
import Element.Region
import Html exposing (Html)
import Metadata exposing (Metadata)
import Pages
import Pages.Directory as Directory exposing (Directory)
import Pages.ImagePath as ImagePath exposing (ImagePath)
import Pages.PagePath as PagePath exposing (PagePath)
import Palette


view :
    { title : String, body : List (Element msg) }
    ->
        { path : PagePath Pages.PathKey
        , frontmatter : Metadata
        }
    -> { title : String, body : Html msg }
view document page =
    { title = document.title
    , body =
        Element.column
            [ Element.width Element.fill ]
            [ header page.path
            , Element.column
                [ Element.padding 30
                , Element.spacing 40
                , Element.Region.mainContent
                , Element.width (Element.fill |> Element.maximum 800)
                , Element.centerX
                ]
                document.body
            , footer
            ]
            |> Element.layout
                [ Element.width Element.fill
                , Font.size 20
                , Font.family [ Font.typeface "Roboto" ]
                , Font.color (Element.rgba255 0 0 0 0.8)
                ]
    }


header : PagePath Pages.PathKey -> Element msg
header currentPath =
    Element.column [ Element.width Element.fill ]
        [ Element.el
            [ Element.height (Element.px 10)
            , Element.width Element.fill
            , Element.Background.gradient
                { angle = 0.2
                , steps =
                    [ Element.rgb255 189 195 199
                    , Element.rgb255 17 24 31
                    ]
                }
            ]
            Element.none
        , Element.wrappedRow
            [ Element.paddingXY 25 0
            , Element.spaceEvenly
            , Element.width Element.fill
            , Element.Region.navigation
            , Element.Border.widthEach { bottom = 1, left = 0, right = 0, top = 0 }
            , Element.Border.color (Element.rgb255 17 24 31)
            ]
            [ Element.link
                [ Element.paddingXY 0 4
                , Element.Region.heading 1
                , Element.Border.widthXY 0 4
                , Element.Border.color (Element.rgba 0 0 0 0)
                ]
                { url = "/"
                , label =
                    Element.el [ Font.size 30, Element.spacing 16 ]
                        (Element.text "Code Reading Club")
                }
            , Element.column [ Element.paddingXY 0 8, Element.spacing 8 ]
                [ iconLink Pages.images.github "Resources" "https://github.com/codereadingclubs/resources"
                ]
            ]
        ]


footer : Element msg
footer =
    Element.column
        [ Element.width (Element.fill |> Element.maximum 800)
        , Element.Region.footer
        , Element.centerX
        , Element.paddingXY 30 0
        ]
        [ Element.row
            [ Element.centerX, Element.paddingXY 0 15 ]
            [ Element.paragraph [] [ Element.text "We strive to be inclusive and value all people equally." ] ]
        , Element.wrappedRow
            [ Element.spaceEvenly
            , Element.spacing 25
            , Element.centerX
            , Element.paddingXY 0 10
            ]
            [ Element.link [] { label = Element.text "Privacy Policy", url = "/privacy" }
            , Element.link [] { label = Element.text "Code of conduct", url = "/conduct" }
            ]
        , Element.wrappedRow
            [ Element.spaceEvenly
            , Element.centerX
            , Element.paddingXY 0 10
            ]
            [ iconLink Pages.images.twitter "Twitter" "http://www.twitter.com/CodeReadingClub"
            ]
        ]


highlightableLink :
    PagePath Pages.PathKey
    -> Directory Pages.PathKey Directory.WithIndex
    -> String
    -> Element msg
highlightableLink currentPath linkDirectory displayName =
    let
        isHighlighted =
            currentPath |> Directory.includes linkDirectory
    in
    Element.link
        (if isHighlighted then
            [ Font.underline
            , Font.color Palette.color.primary
            ]

         else
            []
        )
        { url = linkDirectory |> Directory.indexPath |> PagePath.toString
        , label = Element.text displayName
        }


iconLink : ImagePath key -> String -> String -> Element msg
iconLink icon content href =
    Element.newTabLink []
        { url = href
        , label =
            Element.row [ Element.spacing 5 ]
                [ Element.image
                    [ Element.width (Element.px 22)
                    , Font.color Palette.color.primary
                    ]
                    { src = ImagePath.toString icon, description = "" }
                , Element.paragraph
                    []
                    [ Element.text content ]
                ]
        }
