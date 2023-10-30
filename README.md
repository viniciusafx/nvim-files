# nvim-files

Configurações pessoais do meu neovim.

## Instalação

```
git clone https://github.com/viniciusafx/nvim-files.git ~/.config/nvim
```

Ao executar o editor pela primeira vez, é normal que aconteçam alguns erros, e o script de inicialização irá baixar o ```vim-plug``` automaticamente.

No editor, execute os seguintes comandos para instalar os plugins:

```
:source ~/.config/nvim/init.vim
:PlugInstall
```

Feche e abra novamente o editor para que o ```nvim-treesitter``` baixe e instale os parsers automaticamente.
