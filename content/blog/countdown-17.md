---
{
  "type": "blog",
  "author": "Felienne Hermans",
  "title": "Code Reading Club Reading Countdown - 17",
  "description": "Code Reading Club Reading Countdown - 17",
  "image": "images/articles/CRCRC-17.png",
  "draft": false,
  "published": "2021-12-17",
}
---



## Countdown - Snippet 17

Another parsing snippet, today in Ada!

**Snippet**

![CRCRC-17](/images/articles/CRCRC-17.png)

**Snippet in text**

```pascal
with Ada.Text_IO; use Ada.Text_IO;
package body Scanner is

   C : Character := ' ';

   procedure Get_Next_Token is
      T : Token renames Current_Token;
   begin
      while Is_Whitespace (C) loop
         Next_C;
      end loop;
      if Is_Operator (C) then
         T.Id := Token_Id (C);
         Next_C;
      elsif Is_Digit (C) then
         T.ID := 'N';
         T.Intval := 0;
         loop
            T.Intval := T.Intval * 10 + (Character'Pos (C) - Character'Pos ('0'));
            Next_C;
            exit when not Is_Digit (C);
         end loop;
      elsif At_End then
         T.ID := Eol_Token;
         C := ' ';
      else
         T.Id := Err_Token;
         Next_C;
      end if;
   exception
      when Constraint_Error =>
         T.Id := Err_Token;
         Next_C;
   end Get_Next_Token;

end Scanner
```

**Question**

Give an example of a string for which this code finishes without producing an error token.

## Submission

Submit your answer in our [form](https://forms.gle/241ak21gMu1fRada6).
