#!/bin/sh

if test "x$srcdir" = x ; then srcdir=`pwd`; fi
. ../test_common.sh

set -e

# Note, the test file for this is ref_fixedstring.h5
# But is is generated by the (otherwise unused) program
# ../h5_test/tst_h_fixedstrings.c.

echo "*** Test reading a file with HDF5 fixed length strings"
rm -f ./tmp_fixedstring.cdl
$NCDUMP  ${srcdir}/ref_fixedstring.h5 > ./tmp_fixedstring.cdl
diff -b -w ${srcdir}/ref_fixedstring.cdl ./tmp_fixedstring.cdl
