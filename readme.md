# neovim rust IDE

If you are looking to learn Rust, [this blog post](https://blog.gheo.tech/posts/learning-rust/) contains a lot of useful information.

## features

* autocomplete
* errors
* modified melange theme
* tree folder view
* fish shell

## run as a container

To create image and to test, run:

```
docker build -t ghe0/nvim-rust-ide .
docker run -td --name nvim-rust-ide ghe0/nvim-rust-ide
docker exec -it nvim-rust-ide fish
```

You can also mount git projects and your SSH key in case you need git operations.

## install to your ${HOME}

Running [install.sh](install.sh) should actually work fine on any popular distro. Please read the script before running it.

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
