#!/command/with-contenv bashio

bashio::log.info "Starting FFServer Add-On..."

declare camera_width
declare camera_height
declare camera_fps
declare camera_still_fps

camera_width=$(bashio::config 'camera_width')
camera_height=$(bashio::config 'camera_height')
camera_fps=$(bashio::config 'camera_fps')
camera_still_fps=$(bashio::config 'camera_still_fps')

bashio::log.info "Camera Width: ${camera_width}"
bashio::log.info "Camera Height: ${camera_height}"
bashio::log.info "Camera FPS: ${camera_fps}"
bashio::log.info "Camera Still FPS: ${camera_still_fps}"

sed -i "s/%%camera_width%%/${camera_width}/g" \
    /etc/ffserver.conf

sed -i "s/%%camera_height%%/${camera_height}/g" \
    /etc/ffserver.conf

sed -i "s/%%camera_fps%%/${camera_fps}/g" \
    /etc/ffserver.conf

sed -i "s/%%camera_still_fps%%/${camera_still_fps}/g" \
    /etc/ffserver.conf