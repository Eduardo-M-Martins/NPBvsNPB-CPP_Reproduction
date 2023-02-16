prog=("EP" "MG" "CG" "FT" "IS" "BT" "SP" "LU")
export f1=12
f3=8
cont=0
vet=()

rm ../REP-EXE-B/Logs-Graph-Lines/*
rm ../REP-EXE-C/Logs-Graph-Lines/*
for ((i=0; i<$f3; i++));do
    for ((j=1; j<=$f1; j++));do
        grep "Time in seconds =" ../REP-EXE-B/Logs-FOR-B-MC/out-"${prog[$i]}"-"$j".txt | awk '{print $5}' >> aux1-"${prog[$i]}"-"$j".txt
        while read linha;do
            vet[$cont]=$linha
            cont=$(($cont+1))
        done < aux1-"${prog[$i]}"-"$j".txt
        cont=0
        rm aux1-"${prog[$i]}"-"$j".txt
        python3 lines.py ${vet[@]} $j >> ../REP-EXE-B/Logs-Graph-Lines/zFOR-"${prog[$i]}".txt

        grep "Time in seconds =" ../REP-EXE-B/Logs-CPP-B-MC/out-"${prog[$i]}"-"$j".txt | awk '{print $5}' >> aux1-"${prog[$i]}"-"$j".txt
        while read linha;do
            vet[$cont]=$linha
            cont=$(($cont+1))
        done < aux1-"${prog[$i]}"-"$j".txt
        cont=0
        rm aux1-"${prog[$i]}"-"$j".txt
        python3 lines.py ${vet[@]} $j >> ../REP-EXE-B/Logs-Graph-Lines/zCPP-"${prog[$i]}".txt
    
        grep "Time in seconds =" ../REP-EXE-C/Logs-FOR-C-MC/out-"${prog[$i]}"-"$j".txt | awk '{print $5}' >> aux1-"${prog[$i]}"-"$j".txt
        while read linha;do
            vet[$cont]=$linha
            cont=$(($cont+1))
        done < aux1-"${prog[$i]}"-"$j".txt
        cont=0
        rm aux1-"${prog[$i]}"-"$j".txt
        python3 lines.py ${vet[@]} $j >> ../REP-EXE-C/Logs-Graph-Lines/zFOR-"${prog[$i]}".txt

        grep "Time in seconds =" ../REP-EXE-C/Logs-CPP-C-MC/out-"${prog[$i]}"-"$j".txt | awk '{print $5}' >> aux1-"${prog[$i]}"-"$j".txt
        while read linha;do
            vet[$cont]=$linha
            cont=$(($cont+1))
        done < aux1-"${prog[$i]}"-"$j".txt
        cont=0
        rm aux1-"${prog[$i]}"-"$j".txt
        python3 lines.py ${vet[@]} $j >> ../REP-EXE-C/Logs-Graph-Lines/zCPP-"${prog[$i]}".txt
    done
done