#!/bin/bash

curl -s https://sh.rustup.rs > rust.sh
sh rust.sh -y && rm rust.sh
rustup default stable
rustup toolchain install nightly
rustup +nightly component add rust-src rust-analyzer-preview

ln -s ${HOME}/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/bin/rust-analyzer \
 /usr/local/bin/rust-analyzer

git clone --depth 1 https://github.com/wbthomason/packer.nvim \
  ${HOME}/.local/share/nvim/site/pack/packer/start/packer.nvim
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

mv ${HOME}/.config/nvim/init.lua_final ${HOME}/.config/nvim/init.lua

usermod -s /usr/sbin/fish root
fish -c "fish_add_path -aU ${HOME}/.cargo/bin/"
fish -c "fish_config prompt choose terlar && echo y | fish_config prompt save"
sed -i '2i \ \ \ \ echo (pwd) > ~/.last_folder' ${HOME}/.config/fish/functions/fish_prompt.fish
