FROM alpine:3.19

RUN apk add --no-cache curl

CMD sh -c '
echo "APP_URL=$APP_URL";
echo "Testing connection...";
curl -v "$APP_URL/api/cron/send-lessons" \
  -H "Authorization: Bearer $CRON_SECRET";
echo "Exit code: $?";
'
