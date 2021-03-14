cd %~dp0
set TELEGRAF_CONFIG_PATH=%cd%\\telegraf\\telegraf.conf

start "Grafana Server" "cmd /t:04 /k cd %cd%\\grafana\\bin\\ & grafana-server.exe"
start "Influx Database" "cmd /t:04 /k cd %cd%\\influxdb\\ & influxd.exe"
start "Telegraf Responder" "cmd /t:04 /k cd %cd%\\telegraf\\ & telegraf.exe"
start "Grafana Dashboard" "http://localhost:8085"

pause