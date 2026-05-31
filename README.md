# 🖥️ Terminal Config

Configuração pessoal do terminal para macOS (zsh) com equivalentes para Linux (bash). Mantido aqui para facilitar a migração entre máquinas e compartilhar com quem quiser uma experiência de terminal mais produtiva.

---

## ✨ O que está incluso

| Ferramenta | Função |
|---|---|
| [Oh My Zsh](https://ohmyzsh.github.io/) | Framework de configuração para zsh |
| [Starship](https://starship.rs/) | Prompt minimalista e rápido |
| [eza](https://eza.rocks/) | Substituto moderno do `ls` (com ícones e cores) |
| [bat](https://github.com/sharkdp/bat) | Substituto moderno do `cat` (com syntax highlight) |
| [fzf](https://github.com/junegunn/fzf) | Fuzzy finder interativo |
| [fd](https://github.com/sharkdp/fd) | Substituto moderno do `find` |
| [NVM](https://github.com/nvm-sh/nvm) | Gerenciador de versões do Node.js |
| [SDKMAN](https://sdkman.io/) | Gerenciador de versões do Java/Kotlin/Gradle |

### Plugins Oh My Zsh

- `git` — aliases e funções para git
- `docker` / `docker-compose` — autocomplete para Docker
- `node` / `npm` — autocomplete para Node
- `gradle` — autocomplete para Gradle
- `zsh-autosuggestions` — sugestões de comandos baseadas no histórico
- `fzf-tab` — substitui o autocomplete padrão por um menu fzf
- `fast-syntax-highlighting` — syntax highlighting em tempo real no terminal

---

## 🔑 Aliases de referência rápida

| Alias | Comando real | Descrição |
|---|---|---|
| `ls` | `eza --icons=always` | Listagem com ícones |
| `lsa` | `eza -a --icons=always` | Inclui arquivos ocultos |
| `ll` | `eza -l --icons=always` | Listagem detalhada |
| `la` | `eza -la --icons=always` | Detalhada + ocultos |
| `lt` | `eza --tree --icons=always` | Visualização em árvore |
| `cat` | `bat --paging=never --style=plain` | Cat com syntax highlight sem decorações |
| `diff` | `bat --diff --style=plain` | Diff com cores sem decorações |
| `dow` | `cd ~/Downloads` | Atalho para Downloads |
| `dev` | `cd ~/Developer` | Atalho para projetos |
| `hm` | `cd ~` | Volta para home |
| `cl` | `clear` | Limpa o terminal |

---

## 📁 Estrutura do repositório

```
.
├── .zshrc       # Configuração principal (macOS/zsh)
└── README.md    # Este arquivo
```

---

## 💡 Dicas

- Para ver os temas disponíveis do Oh My Zsh: `ls ~/.oh-my-zsh/themes/`
- Para trocar o tema, edite a linha `ZSH_THEME="robbyrussell"` no `.zshrc`
- O Starship tem sua própria configuração em `~/.config/starship.toml` — veja os [presets oficiais](https://starship.rs/presets/)
- Para listar todos os aliases ativos: `alias`