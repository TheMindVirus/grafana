# grafana
Data Visualisation Server showing NVidia GPU Temperature using InfluxDB, telegraf and nvidia-smi

### WARNING: This software is experimental and may not work as expected on first run.

[Grafana(https://www.google.co.uk)]

### Notes

Extract to C:\Program Files\ for compatibility with original container

Grafana Dashboard URL = "http://localhost:8085"
Influx DataSource URL = "http://localhost:8086"
Influx DataSource Database Name = "telegraf"
Telegraf Query From = "autogen" "nvidia_smi"
Telegraf Query Select = "field(temperature_gpu)" "mean()"
Telegraf Query Group = "time(1s)" "fill(null)"

Default Username = "admin"
Default Password = "admin"