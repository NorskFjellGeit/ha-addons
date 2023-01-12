#!/command/with-contenv bashio

declare jottacli_token
declare jottacli_device

jottacli_token=$(bashio::config 'jottacli_token')
jottacli_device=$(bashio::config 'jottacli_device')

echo ${jottacli_token} > /run/secrets/jotta_token
echo ${jottacli_device} > /run/secrets/jotta_device
