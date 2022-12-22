#!/bin/bash

pacman -Syu --noconfirm --noprogressbar
pacman -S --noconfirm --noprogressbar --needed fish git base-devel neovim

curl -s https://sh.rustup.rs > rust.sh
sh rust.sh -y && rm rust.sh
rustup default stable
rustup toolchain install nightly
rustup +nightly component add rust-src rust-analyzer-preview

ln -s ${HOME}/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/bin/rust-analyzer \
 /usr/local/bin/rust-analyzer

git clone --depth 1 https://github.com/wbthomason/packer.nvim \
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

mv ${HOME}/.config/nvim/init.lua_final ${HOME}/.config/nvim/init.lua

usermod -s /usr/sbin/fish root
fish -c "fish_add_path -aU ${HOME}/.cargo/bin/"
fish -c "fish_config prompt choose terlar && echo y | fish_config prompt save"
sed -i '2i \ \ \ \ echo (pwd) > ${HOME}/.last_folder' ${HOME}/.config/fish/functions/fish_prompt.fish

echo "vim.cmd [[colorscheme melange]]" >> ${HOME}/.config/nvim/init.lua
sed -i "s/highlight Normal guifg=#ECE1D7 guibg=#2A2520 guisp=NONE gui=NONE/highlight Normal guifg=#ECE1D7 guibg=#000000 guisp=NONE gui=NONE/" ${HOME}/.local/share/nvim/site/pack/packer/start/melange/colors/melange.vim
sed -i "s/highlight Folded guifg=#A38D78 guibg=#352F2A guisp=NONE gui=NONE/highlight Folded guifg=#A38D78 guibg=NONE guisp=NONE gui=NONE/" ${HOME}/.local/share/nvim/site/pack/packer/start/melange/colors/melange.vim
sed -i "s/highlight Folded guifg=#A38D78 guibg=#E9E1DB guisp=NONE gui=NONE/highlight Folded guifg=#A38D78 guibg=NONE guisp=NONE gui=NONE/" ${HOME}/.local/share/nvim/site/pack/packer/start/melange/colors/melange.vim
sed -i "s/highlight DiffText guifg=NONE guibg=#243146 guisp=NONE gui=NONE/highlight DiffText guifg=NONE guibg=#121833 guisp=NONE gui=NONE/" ${HOME}/.local/share/nvim/site/pack/packer/start/melange/colors/melange.vim
