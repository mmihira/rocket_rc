docker run \
  --name rc_signal \
  --restart always \
  --log-driver syslog \
  --log-opt tag=rc_signal \
  -e RC_POSTGRES_HOST=rocket_rc_pg \
  -e RC_POSTGRES_PASSWORD="$POSTGRES_PASSWORD" \
  --network=rocket_net \
  -d \
  rc_signal

