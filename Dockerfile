FROM alpine:3.19

RUN apk add --no-cache curl

CMD sh -c 'curl -f -s "$APP_URL/api/cron/send-lessons" -H "Authorization: Bearer $CRON_SECRET"'
