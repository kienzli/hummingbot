# distutils: language=c++

from hummingbot.strategy.strategy_base cimport StrategyBase
from hummingbot.market.market_base cimport MarketBase
from libc.stdint cimport int64_t

cdef class Execution1Strategy(StrategyBase):
    cdef:
        dict _market_infos
        str _asset_symbol
        bint _all_markets_ready
        double _status_report_interval
        int64_t _logging_options
