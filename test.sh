lista_branches=$(cat homolog_branches)
echo $lista_branches | while read -r branch; do
    echo "Obtendo o ultimo commit de $branch"
done
