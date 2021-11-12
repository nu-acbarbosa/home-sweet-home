export NU_HOME="${HOME}/dev/nu"
export NUCLI_HOME="${NU_HOME}/nucli"
export NU_COUNTRY="br"
export PATH="${NUCLI_HOME}:${PATH}"

for init_script in "${HOME}"/Scripts/shell_initialization/*.sh; do
    source "$init_script"
done
