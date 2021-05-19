#!/bin/sh
while :
do
  sleep 2
  gsutil -m -h "Cache-Control:public, max-age=604800" rsync -u -r -x "(.*?)\.(m3u8)$" $RSYNC_HLS_PATH gs://$RSYNC_BUCKET_NAME/
done