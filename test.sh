branch=$1
lista_branches=$(cat homolog_branches)
lista_branches="${lista_branches//$branch/}"
echo $lista_branches | tr ' ' '\n' > homolog_branches_atualizado