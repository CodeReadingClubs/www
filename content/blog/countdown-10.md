---
{
  "type": "blog",
  "author": "Felienne Hermans",
  "title": "Code Reading Club Reading Countdown - 10",
  "description": "Code Reading Club Reading Countdown - 10",
  "image": "images/articles/CRCRC-10.png",
  "draft": false,
  "published": "2021-12-10",
}
---



## Countdown - Snippet 10

Today's code reading countdown in Clojure.

**Snippet**

![CRCRC-10](/images/articles/CRCRC-10.png)

**Snippet in text**

```clojure
(sv/defmethod ::viewer-bundle {:auth false}
  [{:keys [pool] :as cfg} {:keys [profile-id file-id page-id token] :as params}]
  (db/with-atomic [conn pool]
    (let [file    (files/retrieve-file conn file-id)
          project (retrieve-project conn (:project-id file))
          page    (get-in file [:data :pages-index page-id])
          file    (merge (dissoc file :data)
                         (select-keys (:data file) [:colors :media :typographies]))
          users   (teams/retrieve-users conn (:team-id project))

          bundle  {:file file
                   :page page
                   :users users
                   :project project}]

      (if (string? token)
        (do
          (check-shared-token! conn file-id page-id token)
          (assoc bundle :token token))
        (let [stoken (retrieve-shared-token conn file-id page-id)]
          (files/check-read-permissions! conn profile-id file-id)
          (assoc bundle :token (:token stoken)))))))
```

**Question**

What data types are present in this snippet?

## Submission

Submit your answer in our [form](https://forms.gle/241ak21gMu1fRada6).
