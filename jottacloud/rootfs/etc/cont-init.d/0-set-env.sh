#!/command/with-contenv bashio

declare jottacli_token
declare jottacli_device
declare jottacli_interval

jottacli_token=$(bashio::config 'jottacli_token')
jottacli_device=$(bashio::config 'jottacli_device')
jottacli_interval=$(bashio::config 'jottacli_interval')

mkdir -p /run/secrets
echo -n ${jottacli_token} > /run/secrets/jotta_token
echo -n ${jottacli_device} > /run/secrets/jotta_device
echo -n ${jottacli_interval} > /run/secrets/jotta_interval
