#!/bin/bash

#sed -i "/misc_log_ex.h/d" $1

#sed -i 's/LOG_ERROR(/OXEN_LOG(err, /g' $1
#sed -i 's/LOG_PRINT_L0(/OXEN_LOG(warn, /g' $1
#sed -i 's/LOG_PRINT_L1(/OXEN_LOG(info, /g' $1
#sed -i 's/LOG_PRINT_L2(/OXEN_LOG(debug, /g' $1
#sed -i 's/LOG_PRINT_L3(/OXEN_LOG(trace, /g' $1

sed -i 's/MFATAL(/oxenlog::err(/g' $1
sed -i 's/MERROR(/oxenlog::err(, /g' $1
sed -i 's/MWARNING(/oxenlog::warn(/g' $1
sed -i 's/MINFO(/oxenlog::info(/g' $1
sed -i 's/MDEBUG(/oxenlog::debug(/g' $1
sed -i 's/MTRACE(/oxenlog::trace(/g' $1

#sed -i 's/OXEN_LOG(info, /oxenlog::info(/g' $1



#sed '/^OXEN_LOG/s/search_string/replace_string/'
#echo 'OXEN_LOG("x: " << x << " y: " << y )' | sed '/^OXEN_LOG/s/"\s<<\s\(.*\)\s\(.*\))/{}\2,\1)/g' | sed '/^OXEN_LOG/s/"\s<<\s\(.*\)\s\(.*\))/{}\2,\1)/g'
