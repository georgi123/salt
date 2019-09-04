#!/usr/bin/env python
def _my_custom_grain():
    my_grain = {'myvar': 'test', 'role': 'test'}
    return my_grain


def main():
    # initialize a grains dictionary
    grains = {}
    grains['my_grains'] = _my_custom_grain()
    return grains

print(_my_cusytom_grain())
