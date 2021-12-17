---
{
  "type": "blog",
  "author": "Felienne Hermans",
  "title": "Code Reading Club Reading Countdown - 18",
  "description": "Code Reading Club Reading Countdown - 18",
  "image": "images/articles/CRCRC-18.png",
  "draft": false,
  "published": "2021-12-18",
}
---



## Countdown - Snippet 18

Today, a snippet in Elixir!

**Snippet**

![CRCRC-18](/images/articles/CRCRC-18.png)

**Snippet in text**

```elixir
  @spec compare_dirs(Path.t(), Path.t()) ::
          {
            only1_paths :: list(Path.t()),
            only2_paths :: list(Path.t()),
            diff :: list({Path.t(), diff :: String.t()})
          }
  def compare_dirs(dir1, dir2) do
    dir1 = Path.expand(dir1)
    dir2 = Path.expand(dir2)

    assert_dir!(dir1)
    assert_dir!(dir2)

    dir1_paths = relative_paths(dir1)
    dir2_paths = relative_paths(dir2)

    only1_paths = dir1_paths -- dir2_paths
    only2_paths = dir2_paths -- dir1_paths
    common_paths = dir1_paths -- only1_paths
    common_files = Enum.reject(common_paths, &File.dir?/1)

    diff =
      Enum.flat_map(common_files, fn path ->
        file1 = Path.join(dir1, path)
        file2 = Path.join(dir2, path)

        case compare_files(file1, file2) do
          :eq -> []
          {:diff, diff} -> [{path, diff}]
        end
      end)

    {only1_paths, only2_paths, diff}
  end
```

**Question**

Write a summary of this function. What exactly is compared?

## Submission

Submit your answer in our [form](https://forms.gle/241ak21gMu1fRada6).
