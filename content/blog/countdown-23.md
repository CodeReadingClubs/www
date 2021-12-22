---
{
  "type": "blog",
  "author": "Felienne Hermans",
  "title": "Code Reading Club Reading Countdown - 23",
  "description": "Code Reading Club Reading Countdown - 23",
  "image": "images/articles/CRCRC-23.png",
  "draft": false,
  "published": "2021-12-23",
}
---



## Countdown - Snippet 23

Today, a snippet in Elm submitted by CRC organizer Dan Fishgold!

**Snippet**

![CRCRC-23](/images/articles/CRCRC-23.png)


```elm
update : Nav.Key -> Msg -> Model -> ( Model, Cmd Msg )
update key msg model =
    case msg of
        EditRoomId roomIdString ->
            ( { model | roomIdString = roomIdString }, Cmd.none )

        JoinExistingRoom ->
            case RoomId.fromString model.roomIdString of
                Err err ->
                    ( { model | submission = Failure err }, Cmd.none )

                Ok roomId ->
                    ( { model | submission = Loading }
                    , sendFromHome (FindRoom roomId)
                    )

        CreateNewRoom ->
            ( model, Route.push key Route.Create )
```

**Question**

Write a summary of this code snippet.

## Submission

Submit your answer in our [form](https://forms.gle/241ak22gMu1fRada6).