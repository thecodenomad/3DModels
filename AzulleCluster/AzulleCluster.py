#! /usr/bin/env python
# -*- coding: utf-8 -*-
from __future__ import division
import os
import sys

# Assumes SolidPython is in site-packages or elsewhwere in sys.path
from solid import *
from solid.utils import *

SEGMENTS = 120


def azulle_mount():
    pass


if __name__ == '__main__':
    out_dir = sys.argv[1] if len(sys.argv) > 1 else os.curdir
    file_out = os.path.join(out_dir, 'azulle_cluster.scad')

    scad_render_to_file(a, file_out, file_header='$fn = %s;' % SEGMENTS, include_orig_code=True)