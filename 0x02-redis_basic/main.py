#!/usr/bin/env python3
""" Main file """
from exercise import replay

Cache = __import__('exercise').Cache



cache = Cache()

key1 = cache.store("foo")
key2 = cache.store("bar")
key3 = cache.store(42)

replay(cache.store)
