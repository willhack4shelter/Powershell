$fooUser = read-host "Kurzzeichen des Benutzers `n"
$fooNummer = read-host "21 = OrgaCH / 22 = TragCH / 23 = BranCH / 24 = PhysCH `n51 = OrgaDE / 52 = TragDE / 53 = BranDE / 54 = PhysDE `n"

if ($fooNummer -eq 21) {
    ni \\jung.ch\dfs$\install$\_GruppenProgVert\Alle\$fooUser.txt
    ni \\jung.ch\dfs$\install$\_GruppenProgVert\ORGAN\$fooUser.txt
    ni \\jung.ch\dfs$\install$\_GruppenProgVert\ORGANCH\$fooUser.txt
}
elseif ($fooNummer -eq 22){
    ni \\jung.ch\dfs$\install$\_GruppenProgVert\Alle\$fooUser.txt
    ni \\jung.ch\dfs$\install$\_GruppenProgVert\HOLZ\$fooUser.txt
    ni \\jung.ch\dfs$\install$\_GruppenProgVert\INGECH\$fooUser.txt
}
elseif ($fooNummer -eq 23){
    ni \\jung.ch\dfs$\install$\_GruppenProgVert\Alle\$fooUser.txt
    ni \\jung.ch\dfs$\install$\_GruppenProgVert\HOLZ\$fooUser.txt
    ni \\jung.ch\dfs$\install$\_GruppenProgVert\INGECH\$fooUser.txt
}
elseif ($fooNummer -eq 24){
    ni \\jung.ch\dfs$\install$\_GruppenProgVert\Alle\$fooUser.txt
    ni \\jung.ch\dfs$\install$\_GruppenProgVert\PHYS\$fooUser.txt
    ni \\jung.ch\dfs$\install$\_GruppenProgVert\PHYSCH\$fooUser.txt
}
elseif ($fooNummer -eq 51){
    ni \\jung.ch\dfs$\install$\_GruppenProgVert\Alle\$fooUser.txt
    ni \\jung.ch\dfs$\install$\_GruppenProgVert\DEUT\$fooUser.txt
    ni \\jung.ch\dfs$\install$\_GruppenProgVert\ORGANDE\$fooUser.txt
}
elseif ($fooNummer -eq 52){
    ni \\jung.ch\dfs$\install$\_GruppenProgVert\Alle\$fooUser.txt
    ni \\jung.ch\dfs$\install$\_GruppenProgVert\DEUT\$fooUser.txt
    ni \\jung.ch\dfs$\install$\_GruppenProgVert\INGEDE\$fooUser.txt
}
elseif ($fooNummer -eq 53){
    ni \\jung.ch\dfs$\install$\_GruppenProgVert\Alle\$fooUser.txt
    ni \\jung.ch\dfs$\install$\_GruppenProgVert\DEUT\$fooUser.txt
    ni \\jung.ch\dfs$\install$\_GruppenProgVert\INGEDE\$fooUser.txt
}
elseif ($fooNummer -eq 54){
    ni \\jung.ch\dfs$\install$\_GruppenProgVert\Alle\$fooUser.txt
    ni \\jung.ch\dfs$\install$\_GruppenProgVert\DEUT\$fooUser.txt
    ni \\jung.ch\dfs$\install$\_GruppenProgVert\PHYSDE\$fooUser.txt
}