shopt -s expand_aliases

alias insert_1_rovers='echo "1
rover0"'

alias insert_2_rovers='echo "2
rover0
rover1"'

alias insert_1_addr='echo "127.0.0.1:3010"'

alias insert_2_addr='echo "127.0.0.1:3010
127.0.0.1:3011"'

./build_all

./translate/translate.py ../benchmarks/rovers/domain.pddl ../benchmarks/rovers/p03.pddl

./preprocess/preprocess < output.sas

rm agents && insert_2_rovers > agents
rm comm && insert_2_addr > comm

echo "---------- Rovers ----------
" >> tmp_results_file.txt

echo "1) P03 results: 
" >> tmp_results_file.txt

./2_agents

python parse_results.py 2 >> tmp_results_file.txt

rm 0
rm 1

echo "
" >> tmp_results_file.txt

./translate/translate.py ../benchmarks/rovers/domain.pddl ../benchmarks/rovers/p04.pddl

./preprocess/preprocess < output.sas

./2_agents

echo "2) P04 results: 
" >> tmp_results_file.txt

python parse_results.py 2 >> tmp_results_file.txt

rm 0
rm 1

echo "
" >> tmp_results_file.txt

./translate/translate.py ../benchmarks/rovers/domain.pddl ../benchmarks/rovers/p05.pddl

./preprocess/preprocess < output.sas

./2_agents

echo "3) P05 results: 
" >> tmp_results_file.txt

python parse_results.py 2 >> tmp_results_file.txt

rm 0
rm 1

echo "
" >> tmp_results_file.txt

./translate/translate.py ../benchmarks/rovers/domain.pddl ../benchmarks/rovers/p06.pddl

./preprocess/preprocess < output.sas

./2_agents

echo "4) P06 results: 
" >> tmp_results_file.txt

python parse_results.py 2 >> tmp_results_file.txt

echo "
" >> tmp_results_file.txt

./translate/translate.py ../benchmarks/rovers/domain.pddl ../benchmarks/rovers/p07.pddl

./preprocess/preprocess < output.sas

perl -pi -w -e 's/2/3/g;' agents
echo "rover2" >> agents
echo "127.0.0.1:3012" >> comm

./3_agents

echo "5) P07 results: 
" >> tmp_results_file.txt

python parse_results.py 3 >> tmp_results_file.txt

echo "
" >> tmp_results_file.txt

./translate/translate.py ../benchmarks/rovers/domain.pddl ../benchmarks/rovers/p08.pddl

./preprocess/preprocess < output.sas

perl -pi -w -e 's/3/4/g;' agents
echo "rover3" >> agents
echo "127.0.0.1:3013" >> comm

./4_agents

echo "6) P08 results: 
" >> tmp_results_file.txt

python parse_results.py 4 >> tmp_results_file.txt

echo "
" >> tmp_results_file.txt

./translate/translate.py ../benchmarks/rovers/domain.pddl ../benchmarks/rovers/p09.pddl

./preprocess/preprocess < output.sas

./4_agents

echo "7) P09 results: 
" >> tmp_results_file.txt

python parse_results.py 4 >> tmp_results_file.txt

echo "
" >> tmp_results_file.txt

./translate/translate.py ../benchmarks/rovers/domain.pddl ../benchmarks/rovers/p010.pddl

./preprocess/preprocess < output.sas

./4_agents

echo "8) P10 results: 
" >> tmp_results_file.txt

python parse_results.py 4 >> tmp_results_file.txt

echo "
" >> tmp_results_file.txt

./translate/translate.py ../benchmarks/rovers/domain.pddl ../benchmarks/rovers/p11.pddl

./preprocess/preprocess < output.sas

./4_agents

echo "9) P11 results: 
" >> tmp_results_file.txt

python parse_results.py 4 >> tmp_results_file.txt

echo "
" >> tmp_results_file.txt

./translate/translate.py ../benchmarks/rovers/domain.pddl ../benchmarks/rovers/p12.pddl

./preprocess/preprocess < output.sas

./4_agents

echo "10) P12 results: 
" >> tmp_results_file.txt

python parse_results.py 4 >> tmp_results_file.txt

echo "
" >> tmp_results_file.txt

./translate/translate.py ../benchmarks/rovers/domain.pddl ../benchmarks/rovers/p13.pddl

./preprocess/preprocess < output.sas

./4_agents

echo "11) P13 results: 
" >> tmp_results_file.txt

python parse_results.py 4 >> tmp_results_file.txt

echo "
" >> tmp_results_file.txt

./translate/translate.py ../benchmarks/rovers/domain.pddl ../benchmarks/rovers/p14.pddl

./preprocess/preprocess < output.sas

./4_agents

echo "12) P14 results: 
" >> tmp_results_file.txt

python parse_results.py 4 >> tmp_results_file.txt

echo "
" >> tmp_results_file.txt

./translate/translate.py ../benchmarks/rovers/domain.pddl ../benchmarks/rovers/p15.pddl

./preprocess/preprocess < output.sas

./4_agents

echo "13) P15 results: 
" >> tmp_results_file.txt

python parse_results.py 4 >> tmp_results_file.txt

echo "
" >> tmp_results_file.txt

./translate/translate.py ../benchmarks/rovers/domain.pddl ../benchmarks/rovers/p16.pddl

./preprocess/preprocess < output.sas

./4_agents

echo "14) P16 results: 
" >> tmp_results_file.txt

python parse_results.py 4 >> tmp_results_file.txt

echo "
" >> tmp_results_file.txt

./translate/translate.py ../benchmarks/rovers/domain.pddl ../benchmarks/rovers/p17.pddl

./preprocess/preprocess < output.sas

perl -pi -w -e 's/4/6/g;' agents
echo "rover4" >> agents
echo "rover5" >> agents
echo "127.0.0.1:3014" >> comm
echo "127.0.0.1:3015" >> comm

./6_agents

echo "15) P17 results: 
" >> tmp_results_file.txt

python parse_results.py 6 >> tmp_results_file.txt

echo "
" >> tmp_results_file.txt

./translate/translate.py ../benchmarks/rovers/domain.pddl ../benchmarks/rovers/p18.pddl

./preprocess/preprocess < output.sas

./6_agents

echo "16) P18 results: 
" >> tmp_results_file.txt

python parse_results.py 6 >> tmp_results_file.txt

echo "
" >> tmp_results_file.txt

./translate/translate.py ../benchmarks/rovers/domain.pddl ../benchmarks/rovers/p19.pddl

./preprocess/preprocess < output.sas

./6_agents

echo "17) P19 results: 
" >> tmp_results_file.txt

python parse_results.py 6 >> tmp_results_file.txt

echo "
" >> tmp_results_file.txt

./translate/translate.py ../benchmarks/rovers/domain.pddl ../benchmarks/rovers/p20.pddl

./preprocess/preprocess < output.sas

perl -pi -w -e 's/6/8/g;' agents
echo "rover6" >> agents
echo "rover7" >> agents
echo "127.0.0.1:3016" >> comm
echo "127.0.0.1:3017" >> comm

./8_agents

echo "18) P20 results: 
" >> tmp_results_file.txt

python parse_results.py 8 >> tmp_results_file.txt

echo "
" >> tmp_results_file.txt
