#!/bin/bash

awk ' NF>=12 { print $1 } ' nginx-access.log | sort | uniq -c | sort -k1 -r | head -n 5 | awk -v OFS=' - ' ' BEGIN { print "------------------------------------------------\nTop 5 IP addresses with the most requests:\n------------------------------------------------" } { print $2, $1 " requests"}'

awk ' NF>=12 { print $7 } ' nginx-access.log | sort | uniq -c | sort -k1 -r | head -n 5 | awk -v OFS=' - ' ' BEGIN { print "------------------------------------------------\nTop 5 most requested paths:\n------------------------------------------------" } { print $2, $1 " requests"}'

awk ' NF>=12 { print $9 } ' nginx-access.log | sort | uniq -c | sort -k1 -r | head -n 5 | awk -v OFS=' - ' ' BEGIN { print "------------------------------------------------\nTop 5 response status codes:\n------------------------------------------------" } { print $2, $1 " requests"}'

awk ' NF>=12 { print $12 } ' nginx-access.log | sort | uniq -c | sort -k1 -r | head -n 5 | awk -v OFS=' - ' ' BEGIN { print "------------------------------------------------\nTop 5 user agents:\n------------------------------------------------" } { print $2, $1 " requests"}'
