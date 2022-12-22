# neovim rust IDE

To create image and to test, run:

```
podman build -t g00n1x/nvim-rust-ide .
podman run -td --name nvim-rust-ide g00n1x/nvim-rust-ide
podman exec -it --detach-keys nvim-rust-ide fish
```

The first time you open nvim, you must run `:PackerInstall`.

You can also mount git projects and your SSH key in case you need git operations.

## hotkeys:

### operations
```
F5 - run
F6 - save
F7 - test
ctrl+up    - go up
ctrl+down  - go down
ctrl+right - go right
ctrl+left  - go left
```

### errors
```
space e  -  show error  
] d      -  next error  
[ d      -  previous error  
space q  -  show all errors
```

### miscellaneous
```
space f   - format
shift k   - show documentation
g d       - go to definistion
space r n - rename
```
