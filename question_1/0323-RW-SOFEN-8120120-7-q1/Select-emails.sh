#!/usr/bin/env bash
awk -F "-" '{print $2}' students-list_0333.txt > student-emails.txt
echo "Emails of students have been saved in student-emails.txt"
