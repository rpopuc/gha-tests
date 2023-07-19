branch=$1
lista_branches=$(cat homolog_branches)
lista_branches="${lista_branches//$branch/}"
echo $lista_branches > homolog_branches_atualizado