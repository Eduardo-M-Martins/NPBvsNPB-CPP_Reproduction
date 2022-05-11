prog=("EP" "MG" "CG" "FT" "IS" "BT" "SP" "LU")
f3=8
f2=12
contfor=0
vetfor=()
contcpp=0
vetcpp=()

for ((i=0; i<$f3; i++));do
    grep "$j " $HOME/Desktop/LOGS-CLASSE-C/zFOR-"${prog[$i]}".txt | awk '{print $2}' >> $HOME/Desktop/LOGS-CLASSE-C/aux-for-"${prog[$i]}".txt
    grep "$j " $HOME/Desktop/LOGS-CLASSE-C/zCPP-"${prog[$i]}".txt | awk '{print $2}' >> $HOME/Desktop/LOGS-CLASSE-C/aux-cpp-"${prog[$i]}".txt
done

for ((i=0; i<$f3; i++));do
    while read linha;do
                vetfor[$contfor]=$linha
                contfor=$(($contfor+1))
    done < $HOME/Desktop/LOGS-CLASSE-C/aux-for-"${prog[$i]}".txt
    contfor=0

    while read linha;do
                vetcpp[$contcpp]=$linha
                contcpp=$(($contcpp+1))
    done < $HOME/Desktop/LOGS-CLASSE-C/aux-cpp-"${prog[$i]}".txt
    contcpp=0

    python3 calc.py ${vetfor[@]} ${vetcpp[@]} >> aresult-"${prog[$i]}".txt
done
