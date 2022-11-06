# vim-lorem

`vim-lorem` is a very basic plugin to open up a buffer full of throwaway content for you to safely hack on without worry about breaking something.

Maybe you're working on a vim plugin that alters a buffer's content, or just practicing some ninja search and replace moves. You need a nice chunky file to operate on, but you don't want to mess up your actual source code. Sure, there's undo and hopefully you've got your stuff in source control. But you _really shouldn't_ be experimenting on actual source files that are vital to some project.

That's where `vim-lorem` comes in. It exposes a command `:Lorem` that will open up a new buffer and read in a file of your choice.

Suggested key mapping, something like:

```
nnoremap <Leader>li :Lorem<CR>
```

By default, `vim-lorem` loads in an old jQuery source file. But you can set it to whatever file you want with the global option `vimlorem_source`. For example:

```
g:vimlorem_source = '~/projects/foo/main.go'
```

By default, the new buffer's filetype is set to `javascript` because that's the type of the default file. If you're loading in a different type of file, you can set the filetype with the `vimlorem_filetype` global option. For example:

```
g:vimlorem_filetype = 'go'
```

You can safely use whatever file you want because `vim-lorem` loads in the content of that file to a brand new buffer. Your original precious source file is never edited. Now you can experiment with insertions, deletions, replacements, transformations, etc. and never have to worry. And the next time you call `:Lorem`, the file is back to its original state.
