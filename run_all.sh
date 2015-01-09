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

echo "Running rovers.p01.pddl…"

./translate/translate.py ../benchmarks/rovers/domain.pddl ../benchmarks/rovers/p01.pddl

./preprocess/preprocess < output.sas

rm agents && insert_4_rovers > agents
rm comm && insert_4_addr > comm

./4_agents

