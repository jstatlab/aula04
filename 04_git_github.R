# ~ é apenas o caminho para a home do usuário.


# Exibe o situation report da instalação do GIT
usethis::git_sitrep()

# gitcreds::gitcreds_get()

library(usethis)

use_git_config(
  user.name = "nome",   # Pode ser seu nome mesmo ou nome de usuário do GH
  user.email = "email"  # email de cadastro no GH
)

# Configurar o nome do branch padrão: main ou master
git_default_branch_configure()



# PAT: Personal Access Token. 1 por computador
# Autenticação: melhor usar HTTPS (padrão) do que SSH
# Podemos ter vários PAT para máquinas diferentes
# SSH é autenticação em dois níveis
# Recomendação: no expiration
# github.com/settings/tokens (classic)
create_github_token()


# Credenciais
gitcreds::gitcreds_set()

# Pacote que conecta com o GH
# install.packages("gh")
# Função Who am I (quem sou eu)
gh::gh_whoami()

usethis::create_from_github(
  repo_spec = "https://github.com/jstatlab/aula04",
  destdir = "../202305-r4ds3/",
  open = FALSE # Só para ver o que a função faz
)


# Na aba git
# - Os arquivos com ?, indicam que o status ainda está indefinido
# Staged: verifica se arquivo está na área de staging (área de preparo)
# Para selecionar todos os arquivos:
#    - Basta clicar no nome de algum arquivo
#    - Pressionar Ctrl + A
#    - Clicar em qualquer clickbox
# Status A verde significa que os arquivos foram add à staged area.







