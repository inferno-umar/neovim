# Vim/Neovim config file

This is my personal vim configuration.

Humble and lightweight on resources.

# Installation

For Vim

1. Download and install [vim-plug](https://github.com/junegunn/vim-plug) (a plugin manager for vim/neovim). Don't worry its easy & create a directory named plugged.

2. Copy .vimrc file from [here](https://github.com/inferno-umar/vim-neovim/blob/main/.vimrc) and paste it in your ~/.vimrc file.

3. Start vim (ignore the errors for first time).

4. Run :PlugInstall

5. Restart vim.

And You're done. Enjoy

For Neovim

1. Download and install [vim-plug](https://github.com/junegunn/vim-plug) (a plugin manager for vim/neovim). Don't worry its easy.

2. Copy .vimrc file from [here](https://github.com/inferno-umar/vim-neovim/blob/main/.vimrc) and paste it in your ~/.config/nvim/init.vim file.

3. After installation move coc-settings.json file to /.../.config/nvim.

4. Restart nvim.

And You're done. Enjoy

# Screenshot
![alt text](https://github.com/inferno-umar/neovim/blob/main/vim.png)

# Note
You can make changes to the various keybindings in init.vim/.vimrc file.

Installation of onehalf theme is tricky, once all the plugins are installed hover where they are downloaded i.e. (Vim - ~/.vim/plugged/onehalf/ & for nvim ~/.config/nvim/plugged/onehalf) and delete all the folders except (.git and vim). Move all the files/folders from vim to plugged directory and restart vim.

If you want icons read [this documentation](https://github.com/ryanoasis/nerd-fonts#font-installation).

Any suggestion would be appreciated.

Still have any issues raise one. I'll fix it.
