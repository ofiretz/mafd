shopt -s expand_aliases

alias insert_1_rovers='echo "1
rover0"'

alias insert_2_rovers='echo "2
rover0
rover1"'

alias insert_3_rovers='echo "3
rover0
rover1
rover2"'

alias insert_4_rovers='echo "4
rover0
rover1
rover2
rover3"'

alias insert_5_rovers='echo "5
rover0
rover1
rover2
rover3
rover4"'

alias insert_6_rovers='echo "6
rover0
rover1
rover2
rover3
rover4
rover5"'

alias insert_7_rovers='echo "7
rover0
rover1
rover2
rover3
rover4
rover5
rover6"'

alias insert_8_rovers='echo "8
rover0
rover1
rover2
rover3
rover4
rover5
rover6
rover7"'

alias insert_9_rovers='echo "9
rover0
rover1
rover2
rover3
rover4
rover5
rover6
rover7
rover8"'

alias insert_10_rovers='echo "10
rover0
rover1
rover2
rover3
rover4
rover5
rover6
rover7
rover8
rover9"'

alias insert_11_rovers='echo "11
rover0
rover1
rover2
rover3
rover4
rover5
rover6
rover7
rover8
rover9
rover10"'

alias insert_12_rovers='echo "12
rover0
rover1
rover2
rover3
rover4
rover5
rover6
rover7
rover8
rover9
rover10
rover11"'

alias insert_13_rovers='echo "13
rover0
rover1
rover2
rover3
rover4
rover5
rover6
rover7
rover8
rover9
rover10
rover11
rover12"'

alias insert_14_rovers='echo "14
rover0
rover1
rover2
rover3
rover4
rover5
rover6
rover7
rover8
rover9
rover10
rover11
rover12
rover13"'

alias insert_1_addr='echo "127.0.0.1:3010"'

alias insert_2_addr='echo "127.0.0.1:3010
127.0.0.1:3011"'

alias insert_3_addr='echo "127.0.0.1:3010
127.0.0.1:3011
127.0.0.1:3012"'

alias insert_4_addr='echo "127.0.0.1:3010
127.0.0.1:3011
127.0.0.1:3012
127.0.0.1:3013"'

alias insert_5_addr='echo "127.0.0.1:3010
127.0.0.1:3011
127.0.0.1:3012
127.0.0.1:3013
127.0.0.1:3014"'

alias insert_6_addr='echo "127.0.0.1:3010
127.0.0.1:3011
127.0.0.1:3012
127.0.0.1:3013
127.0.0.1:3014
127.0.0.1:3015"'

alias insert_7_addr='echo "127.0.0.1:3010
127.0.0.1:3011
127.0.0.1:3012
127.0.0.1:3013
127.0.0.1:3014
127.0.0.1:3015
127.0.0.1:3016"'

alias insert_8_addr='echo "127.0.0.1:3010
127.0.0.1:3011
127.0.0.1:3012
127.0.0.1:3013
127.0.0.1:3014
127.0.0.1:3015
127.0.0.1:3016
127.0.0.1:3017"'

alias insert_9_addr='echo "127.0.0.1:3010
127.0.0.1:3011
127.0.0.1:3012
127.0.0.1:3013
127.0.0.1:3014
127.0.0.1:3015
127.0.0.1:3016
127.0.0.1:3017
127.0.0.1:3018"'

alias insert_10_addr='echo "127.0.0.1:3010
127.0.0.1:3011
127.0.0.1:3012
127.0.0.1:3013
127.0.0.1:3014
127.0.0.1:3015
127.0.0.1:3016
127.0.0.1:3017
127.0.0.1:3018
127.0.0.1:3019"'

alias insert_11_addr='echo "127.0.0.1:3010
127.0.0.1:3011
127.0.0.1:3012
127.0.0.1:3013
127.0.0.1:3014
127.0.0.1:3015
127.0.0.1:3016
127.0.0.1:3017
127.0.0.1:3018
127.0.0.1:3019
127.0.0.1:3020"'

alias insert_12_addr='echo "127.0.0.1:3010
127.0.0.1:3011
127.0.0.1:3012
127.0.0.1:3013
127.0.0.1:3014
127.0.0.1:3015
127.0.0.1:3016
127.0.0.1:3017
127.0.0.1:3018
127.0.0.1:3019
127.0.0.1:3020
127.0.0.1:3021"'

alias insert_13_addr='echo "127.0.0.1:3010
127.0.0.1:3011
127.0.0.1:3012
127.0.0.1:3013
127.0.0.1:3014
127.0.0.1:3015
127.0.0.1:3016
127.0.0.1:3017
127.0.0.1:3018
127.0.0.1:3019
127.0.0.1:3020
127.0.0.1:3021
127.0.0.1:3022"'

./build_all

./translate/translate.py ../benchmarks/rovers/domain.pddl ../benchmarks/rovers/p03.pddl

./preprocess/preprocess < output.sas

rm agents && insert_2_rovers > agents
rm comm && insert_2_addr > comm

./2_agents

echo "---------- Rovers ----------
" >> tmp_results_file.txt

echo "1) P03 results: 
" >> tmp_results_file.txt

python parse_results.py 2 >> tmp_results_file.txt

echo "
" >> tmp_results_file.txt

./translate/translate.py ../benchmarks/rovers/domain.pddl ../benchmarks/rovers/p04.pddl

./preprocess/preprocess < output.sas

./2_agents

echo "2) P04 results: 
" >> tmp_results_file.txt

python parse_results.py 2 >> tmp_results_file.txt

echo "
" >> tmp_results_file.txt

./translate/translate.py ../benchmarks/rovers/domain.pddl ../benchmarks/rovers/p05.pddl

./preprocess/preprocess < output.sas

./2_agents

echo "3) P05 results: 
" >> tmp_results_file.txt

python parse_results.py 2 >> tmp_results_file.txt

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

echo "rover2" >> agents
perl -pi -w -e 's/2/3/g;' agents
echo "127.0.0.1:3012" >> comm


./3_agents

echo "5) P07 results: 
" >> tmp_results_file.txt

python parse_results.py 3 >> tmp_results_file.txt

echo "
" >> tmp_results_file.txt

./translate/translate.py ../benchmarks/rovers/domain.pddl ../benchmarks/rovers/p08.pddl

./preprocess/preprocess < output.sas

echo "rover3" >> agents
perl -pi -w -e 's/3/4/g;' agents
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

echo "rover4" >> agents
echo "rover5" >> agents
perl -pi -w -e 's/4/6/g;' agents
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

echo "rover6" >> agents
echo "rover7" >> agents
perl -pi -w -e 's/6/8/g;' agents
echo "127.0.0.1:3016" >> comm
echo "127.0.0.1:3017" >> comm

./8_agents

echo "18) P20 results: 
" >> tmp_results_file.txt

python parse_results.py 8 >> tmp_results_file.txt

echo "
" >> tmp_results_file.txt







