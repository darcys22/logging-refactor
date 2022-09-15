#!/bin/bash

#sed -i "/misc_log_ex.h/d" $1

sed -i 's/LOG_ERROR(/oxen::log::error(logcat, /g' $1
sed -i 's/LOG_PRINT_L0(/oxen::log::warning(logcat, /g' $1
sed -i 's/LOG_PRINT_L1(/oxen::log::info(logcat, /g' $1
sed -i 's/LOG_PRINT_L2(/oxen::log::debug(logcat, /g' $1
sed -i 's/LOG_PRINT_L3(/oxen::log::trace(logcat, /g' $1

sed -i 's/MFATAL(/oxen::log::error(logcat, /g' $1
sed -i 's/MERROR(/oxen::log::error(logcat, /g' $1
sed -i 's/MWARNING(/oxen::log::warning(logcat, /g' $1
sed -i 's/MINFO(/oxen::log::info(logcat, /g' $1
sed -i 's/MDEBUG(/oxen::log::debug(logcat, /g' $1
sed -i 's/MTRACE(/oxen::log::trace(logcat, /g' $1

#define LOG_ERROR_CC(ct, message) MERROR(ct << message)
#define LOG_WARNING_CC(ct, message) MWARNING(ct << message)
#define LOG_INFO_CC(ct, message) MINFO(ct << message)
#define LOG_DEBUG_CC(ct, message) MDEBUG(ct << message)
#define LOG_TRACE_CC(ct, message) MTRACE(ct << message)

#sed -i 's/LOG_ERROR_CC(/oxenlog::err(/g' $1
#sed -i 's/LOG_WARNING_CC(/oxenlog::warn(/g' $1
#sed -i 's/LOG_INFO_CC(/oxenlog::info(/g' $1
#sed -i 's/LOG_DEBUG_CC(/oxenlog::debug(/g' $1
#sed -i 's/LOG_TRACE_CC(/oxenlog::trace(/g' $1

#define LOG_PRINT_CC_L0(ct, message) LOG_PRINT_L0(ct << message)
#define LOG_PRINT_CC_L1(ct, message) LOG_PRINT_L1(ct << message)
#define LOG_PRINT_CC_L2(ct, message) LOG_PRINT_L2(ct << message)
#define LOG_PRINT_CC_L3(ct, message) LOG_PRINT_L3(ct << message)
#define LOG_PRINT_CC_L4(ct, message) LOG_PRINT_L4(ct << message)

#sed -i 's/LOG_PRINT_CC_L0(/oxenlog::warn(/g' $1
#sed -i 's/LOG_PRINT_CC_L1(/oxenlog::info(/g' $1
#sed -i 's/LOG_PRINT_CC_L2(/oxenlog::debug(/g' $1
#sed -i 's/LOG_PRINT_CC_L3(/oxenlog::trace(/g' $1
#sed -i 's/LOG_PRINT_CC_L4(/oxenlog::trace(/g' $1

#define LOG_ERROR_CCONTEXT(message)    LOG_ERROR_CC(context, message)
#define LOG_PRINT_CCONTEXT_L0(message) LOG_PRINT_CC_L0(context, message)
#define LOG_PRINT_CCONTEXT_L1(message) LOG_PRINT_CC_L1(context, message)
#define LOG_PRINT_CCONTEXT_L2(message) LOG_PRINT_CC_L2(context, message)
#define LOG_PRINT_CCONTEXT_L3(message) LOG_PRINT_CC_L3(context, message)

#sed -i 's/LOG_ERROR_CCONTEXT(/oxenlog::err(/g' $1
#sed -i 's/LOG_PRINT_CCONTEXT_L0(/oxenlog::warn(/g' $1
#sed -i 's/LOG_PRINT_CCONTEXT_L1(/oxenlog::info(/g' $1
#sed -i 's/LOG_PRINT_CCONTEXT_L2(/oxenlog::debug(/g' $1
#sed -i 's/LOG_PRINT_CCONTEXT_L3(/oxenlog::trace(/g' $1

#sed -i 's/OXEN_LOG(err, /oxenlog::err(/g' $1
#sed -i 's/OXEN_LOG(warn, /oxenlog::warn(/g' $1
#sed -i 's/OXEN_LOG(info, /oxenlog::info(/g' $1
#sed -i 's/OXEN_LOG(debug, /oxenlog::debug(/g' $1
#sed -i 's/OXEN_LOG(trace, /oxenlog::trace(/g' $1

#define LOG_CC(level, ct, message) MLOG(level, ct << message)

#sed -i 's/fmt::format(bg(fmt::terminal_color/fmt::format(fg(fmt::terminal_color/g' $1

#sed '/^OXEN_LOG/s/search_string/replace_string/'
#echo 'OXEN_LOG("x: " << x << " y: " << y )' | sed '/^OXEN_LOG/s/"\s<<\s\(.*\)\s\(.*\))/{}\2,\1)/g' | sed '/^OXEN_LOG/s/"\s<<\s\(.*\)\s\(.*\))/{}\2,\1)/g'
