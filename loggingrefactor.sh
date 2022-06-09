#!/bin/bash

#sed -i "/misc_log_ex.h/d" $1

#sed -i 's/LOG_ERROR(/OXEN_LOG(err, /g' $1
#sed -i 's/LOG_PRINT_L0(/OXEN_LOG(warn, /g' $1
#sed -i 's/LOG_PRINT_L1(/OXEN_LOG(info, /g' $1
#sed -i 's/LOG_PRINT_L2(/OXEN_LOG(debug, /g' $1
#sed -i 's/LOG_PRINT_L3(/OXEN_LOG(trace, /g' $1
#sed -i 's/MERROR(/OXEN_LOG(error, /g' $1
#sed -i 's/MWARNING(/OXEN_LOG(warn, /g' $1
#sed -i 's/MINFO(/OXEN_LOG(info, /g' $1
#sed -i 's/MDEBUG(/OXEN_LOG(debug, /g' $1
#sed -i 's/MTRACE(/OXEN_LOG(trace, /g' $1

sed -i 's/MGINFO(/OXEN_LOG(info, /g' $1
sed -i 's/MGINFO_RED(/OXEN_LOG(info, /g' $1
sed -i 's/MGINFO_GREEN(/OXEN_LOG(info, /g' $1
sed -i 's/MGINFO_YELLOW(/OXEN_LOG(info, /g' $1
sed -i 's/MGINFO_BLUE(/OXEN_LOG(info, /g' $1
sed -i 's/MGINFO_MAGENTA(/OXEN_LOG(info, /g' $1
sed -i 's/MGINFO_CYAN(/OXEN_LOG(info, /g' $1

#define MGINFO(x) MCINFO("global",x)
#define MGINFO_RED(x) MCLOG_RED(el::Level::Info, "global",x)
#define MGINFO_GREEN(x) MCLOG_GREEN(el::Level::Info, "global",x)
#define MGINFO_YELLOW(x) MCLOG_YELLOW(el::Level::Info, "global",x)
#define MGINFO_BLUE(x) MCLOG_BLUE(el::Level::Info, "global",x)
#define MGINFO_MAGENTA(x) MCLOG_MAGENTA(el::Level::Info, "global",x)
#define MGINFO_CYAN(x) MCLOG_CYAN(el::Level::Info, "global",x)



#sed '/^OXEN_LOG/s/search_string/replace_string/'
#echo 'OXEN_LOG("x: " << x << " y: " << y )' | sed '/^OXEN_LOG/s/"\s<<\s\(.*\)\s\(.*\))/{}\2,\1)/g' | sed '/^OXEN_LOG/s/"\s<<\s\(.*\)\s\(.*\))/{}\2,\1)/g'
