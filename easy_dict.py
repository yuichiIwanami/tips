# Convenience class that behaves exactly like dict(), but allows accessing
# the keys and values using the attribute syntax, i.e., "mydict.key = value".

class EasyDict(dict):
    def __init__(self, *args, **kwargs): 
        super().__init__(*args, **kwargs)
    def __getattr__(self, name): 
        return self[name]
    def __setattr__(self, name, value): 
        self[name] = value
    def __delattr__(self, name): 
        del self[name]
