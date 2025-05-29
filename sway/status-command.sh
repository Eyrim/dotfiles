#!/bin/zsh

date_time=$(date +'%Y-%m-%d %X');
batt_percentage=$(acpi | grep -Eo "(Discharging|Charging),\s[0-9]{1,3}%" | tr -d ",");
ssid=$(iwconfig wlan0 | head -n 1 | awk '{print $4}' | grep -oE \".+\" | tr -d '"')

echo "$ssid : $date_time : $batt_percentage";

return 0;

