# This script updates splice.xml which is used for splice_insert generation

#!/bin/bash
while true
do
  echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?><tsduck><splice_information_table>\<splice_insert splice_event_id=\"101\" unique_program_id=\"1\" out_of_network=\"true\" splice_immediate=\"true\"><break_duration duration=\"488880\" auto_return=\"false\"></break_duration></splice_insert></splice_information_table></tsduck>" > splice.xml
  sleep 60
done
