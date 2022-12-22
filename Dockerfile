from docker.io/archlinux/archlinux:latest
workdir /root/

run mkdir -p /root/.config/fish/functions /root/.config/nvim
copy nvim /root/.config/nvim
copy fish_greeting.fish /root/.config/fish/functions/fish_greeting.fish

env PATH="/root/.cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
env RUST_SRC_PATH="/root/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library"
env TERM="xterm-256color"

copy install.sh /root/install.sh
run chmod +x install.sh
run /root/install.sh
