#!/bin/bash
# It requires tsduck with spliceinject installed. This script ingests udp/ts, polls splice.xml, injects SCTE event and generates new udp/ts.
# Flussonic example:
#stream one {
#  input fake://;
#  push udp://224.2.2.2:2222;
#}
#stream two {
#  input udp://224.2.2.2:3333;
#}

#!/bin/bash

source="224.2.2.2:2222"
destination="224.2.2.2:3333"

while true
do
start=`date +%s`
#tsp -I ip ${source} | tsp --add-input-stuffing 1/10 --debug=3 --verbose -P pmt --add-pid 301/0x86 -P spliceinject --inject-interval 2000 --service 0x0001 --file splice.xml -O ip ${destination}
tsp --add-input-stuffing 1/10 -I ip ${source} -P pmt --add-pid 301/0x86 -P spliceinject --inject-interval 2000 --service 0x3e8 --file splice.xml -O ip ${destination}
end=`date +%s`
runtime=$((end - start))
if (($runtime < 1)); then
  echo "Error on the startup"
  break
fi
done
