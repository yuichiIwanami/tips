import datetime
import logging
import pytz

logger = logging.getLogger(__name__)

# def tokyo_timezone(sec, what):
#     '''sec and what is unused.'''
#     tokyo_time = datetime.datetime.now() + datetime.timedelta(hours=9)
#     return tokyo_time.timetuple()

class Formatter(logging.Formatter):
    """override logging.Formatter to use an aware datetime object"""
    def converter(self, timestamp):
        dt = datetime.datetime.fromtimestamp(timestamp)
        tzinfo = pytz.timezone('Asia/Tokyo')
        return tzinfo.localize(dt)
        return dt

    def formatTime(self, record, datefmt=None):
        dt = self.converter(record.created)
        if datefmt:
            s = dt.strftime(datefmt)
        else:
            t = dt.strftime("%Y-%m-%d %H:%M:%S")
            s = f'{t}.{record.msecs:.0f}'
        return s

if len(logger.handlers) == 0:
    # logging.Formatter.converter = tokyo_timezone
    ch = logging.StreamHandler()
    ch.setLevel(logging.DEBUG)
    # formatter = logging.Formatter('%(asctime)s %(message)s', datefmt='%Y-%m-%d %H:%M:%S.%f')
    formatter = Formatter('%(asctime)s %(message)s')
    ch.setFormatter(formatter)
    logger.addHandler(ch)  
