echo ">>> in $0"
OUT_DIR=/home/bywwh/FlymeOS/devices/aries/out/merged_target_files
OTHER_DIR=/home/bywwh/FlymeOS/devices/aries/other

cd $OUT_DIR
echo
echo ">>> delete $OUT_DIR/DATA"
echo
rm -v -rf DATA/
echo
echo ">>> delete $OUT_DIR/SYSTEM/priv-app/Settings/Settings"
echo
rm -v -rf $OUT_DIR/SYSTEM/priv-app/Settings/Settings
echo
echo ">>> create dir DATA/"
echo
mkdir -vp DATA/
echo
echo ">>> move some files into OUT_DIR"
echo
cp -v -rf $OTHER_DIR/data $OUT_DIR/DATA
