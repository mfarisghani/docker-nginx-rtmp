#!/bin/sh
while :
do
  sleep 2
  gsutil -m -h "Cache-Control:public, max-age=2" rsync -u -r -x "(.*?)\.(ts)$" $RSYNC_HLS_PATH gs://$RSYNC_BUCKET_NAME/
done