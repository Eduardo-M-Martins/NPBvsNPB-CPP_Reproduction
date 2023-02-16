prog=("EP" "MG" "CG" "FT" "IS" "BT" "SP" "LU")
f3=8
f2=12
contfor=0
vetfor=()
contcpp=0
vetcpp=()

rm ../REP-EXE-B/Logs-Graph-Bars/*
rm ../REP-EXE-C/Logs-Graph-Bars/*
for ((i=0; i<$f3; i++));do
    grep "$j " ../REP-EXE-B/Logs-Graph-Lines/zFOR-"${prog[$i]}".txt | awk '{print $2}' >> aux-for-"${prog[$i]}".txt
    grep "$j " ../REP-EXE-B/Logs-Graph-Lines/zCPP-"${prog[$i]}".txt | awk '{print $2}' >> aux-cpp-"${prog[$i]}".txt
done

for ((i=0; i<$f3; i++));do
    while read linha;do
                vetfor[$contfor]=$linha
                contfor=$(($contfor+1))
    done < aux-for-"${prog[$i]}".txt
    contfor=0
    rm aux-for-"${prog[$i]}".txt

    while read linha;do
                vetcpp[$contcpp]=$linha
                contcpp=$(($contcpp+1))
    done < aux-cpp-"${prog[$i]}".txt
    contcpp=0
    rm aux-cpp-"${prog[$i]}".txt

    python3 bars.py ${vetfor[@]} ${vetcpp[@]} >> ../REP-EXE-B/Logs-Graph-Bars/bars-"${prog[$i]}".txt
done

contfor=0
vetfor=()
contcpp=0
vetcpp=()

for ((i=0; i<$f3; i++));do
    grep "$j " ../REP-EXE-C/Logs-Graph-Lines/zFOR-"${prog[$i]}".txt | awk '{print $2}' >> aux-for-"${prog[$i]}".txt
    grep "$j " ../REP-EXE-C/Logs-Graph-Lines/zCPP-"${prog[$i]}".txt | awk '{print $2}' >> aux-cpp-"${prog[$i]}".txt
done

for ((i=0; i<$f3; i++));do
    while read linha;do
                vetfor[$contfor]=$linha
                contfor=$(($contfor+1))
    done < aux-for-"${prog[$i]}".txt
    contfor=0
    rm aux-for-"${prog[$i]}".txt

    while read linha;do
                vetcpp[$contcpp]=$linha
                contcpp=$(($contcpp+1))
    done < aux-cpp-"${prog[$i]}".txt
    contcpp=0
    rm aux-cpp-"${prog[$i]}".txt

    python3 bars.py ${vetfor[@]} ${vetcpp[@]} >> ../REP-EXE-C/Logs-Graph-Bars/bars-"${prog[$i]}".txt
done