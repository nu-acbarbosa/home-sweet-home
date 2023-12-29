# NU VARIABLES
export NU_HOME="${HOME}/dev/nu"
export NUCLI_HOME="${NU_HOME}/nucli"
export NU_COUNTRY="br"

# HOMEBREW
export HOMEBREW_PREFIX=/usr/local


export PATH="${NUCLI_HOME}:${PATH}:/Users/alexandre.barbosa/Library/Application Support/Coursier/bin"

for init_script in "${HOME}"/Scripts/shell_initialization/*.sh; do
    source "$init_script"
done
