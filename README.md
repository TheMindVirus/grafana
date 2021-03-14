# grafana
Data Visualiser Server showing NVIDIA GPU Temperature using Grafana, InfluxDB, telegraf and nvidia-smi

### WARNING: The software in this repository is experimental and may not work as expected on first run!

![Grafana](https://github.com/TheMindVirus/grafana/blob/main/Grafana.png)

## Installation Notes

Extract to `C:\Program Files\` for compatibility with original container.

Copy `nvidia-smi.exe` from `C:\Windows\System32\DriverStore\FileRepository\nv_dispi.inf_amd64_272b5c540127d6d2\nvidia-smi.exe` \
and paste into `C:\Program Files\NVIDIA Corporation\NVSMI\` if not already there.

Grafana Dashboard URL = `http://localhost:8085`

Influx DataSource URL = `http://localhost:8086`

Influx DataSource Database Name = `telegraf`

Telegraf Query From = `autogen` `nvidia_smi`

Telegraf Query Select = `field(temperature_gpu)` `mean()`

Telegraf Query Group = `time(1s)` `fill(null)`


Default Username = `admin`

Default Password = `admin`

## Links
Grafana: https://grafana.com \
InfluxDB: https://www.influxdata.com \
Telegraf: https://www.influxdata.com/time-series-platform/telegraf \
NVidia SMI: https://developer.nvidia.com/nvidia-system-management-interface
