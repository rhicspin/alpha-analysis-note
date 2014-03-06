#!/usr/bin/env python2

import os
import mwclient

site = mwclient.Site(host=('https', 'wiki.bnl.gov'), path="/rhicspin/")
site.login("Dmitry Kalinkin", os.getenv('PASSWORD'))
print site.upload(
    open("alpha-analysis-note.pdf"),
    "PC-alpha-analysis-note.pdf",
    os.getenv('TRAVIS_COMMIT'),
    ignore=True
    )
