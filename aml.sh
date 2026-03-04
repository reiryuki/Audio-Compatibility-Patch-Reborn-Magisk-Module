[ ! "$MODPATH" ] && MODPATH=${0%/*}

# destination
MODAPS=`find $MODPATH -type f -name *policy*.conf -o -name *policy*.xml`

# patch audio policy
for MODAP in $MODAPS; do
  sed -i 's|COMPRESS_OFFLOAD|NONE|g' $MODAP
  sed -i 's|,compressed_offload||g' $MODAP
  sed -i 's|compressed_offload,||g' $MODAP
  sed -i 's|RAW|NONE|g' $MODAP
  sed -i 's|,raw||g' $MODAP
  sed -i 's|raw,||g' $MODAP
  sed -i 's|FAST|NONE|g' $MODAP
done


