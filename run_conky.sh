index=$(cat /sys/class/hwmon/hwmon*/name | grep -n coretemp | cut -d : -f 1)
index=$(($index -1 ))
echo hwmon index is $index
sed -E "s/hwmon\s+[0-9]/hwmon $index/" ~/.conkyrc_tmp > ~/.conkyrc
conky