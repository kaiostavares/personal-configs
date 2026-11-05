# Terminal Config

Cópia da configuração pessoal de Zsh usada no macOS: Oh My Zsh, Starship, autocomplete com fzf-tab, sugestões e realce de sintaxe.

## Instalar

Com [Homebrew](https://brew.sh/) e [Oh My Zsh](https://ohmyz.sh/) instalados:

```sh
brew install starship eza bat fzf fd fzf-tab

git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting"
```

Se os plugins já estiverem instalados, pule os comandos `git clone`. Use uma Nerd Font no terminal para exibir os ícones.

Na pasta deste repositório, faça backup e aplique:

```sh
[ ! -f ~/.zshrc ] || cp ~/.zshrc ~/.zshrc.backup-$(date +%Y%m%d-%H%M%S)
cp .zshrc ~/.zshrc
exec zsh
```

Após atualizar o repo, repita a cópia para aplicar as mudanças.

No Linux, use Zsh e instale as mesmas ferramentas. Ajuste os caminhos do NVM (`/opt/homebrew/opt/nvm`) e do AWS completer (`/usr/local/bin/aws_completer`) conforme a instalação. O fzf-tab depende do Homebrew. Use versões de fzf com suporte a `fzf --zsh`.

## Uso rápido

| Atalho | Ação |
|---|---|
| `Tab` | Autocomplete com preview |
| `Ctrl+T` / `Alt+C` / `Ctrl+R` | Buscar arquivos / diretórios / histórico |
| `ls` / `lsa` | Listar arquivos / incluir ocultos |
| `ll` / `la` / `lt` | Listagem detalhada / com ocultos / árvore |
| `cat` | Exibir arquivo com realce de sintaxe |
| `diff` | Executar `bat --diff --style=plain` |
| `dow` / `hm` / `cl` | Downloads / home / limpar terminal |

NVM, SDKMAN e autocomplete da AWS são carregados quando encontrados nos caminhos configurados. O prompt pode ser personalizado em `~/.config/starship.toml`.
