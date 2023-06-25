#!/usr/bin/env bash
#it has access to the the cohort list and allows modification
echo "Bachelor of Software Engineering cohort list of student"
echo -e  "Choose an option to access the desired one\n1)Enter a new student record\n2)update the student record\n3)delete a file\n4)View the list of students\n5)Exit the application"

read -r number

case "$number" in
	        "1")
	                echo "You can now enter the student record"
	                source "student_records"
	                ;;
	        "2")
	                echo "You can now update the student record"
	                echo "Enter the student PID: "
	                read -r PID
	                filename="students-list_0333.txt"
	                source "$filename"
																						                old_file=$(cat "$filename" | grep $PID)
																						                if [ -z "$old_file" ];
			then	
																						                                echo "No Id found"
	                        	 continue
			fi	
																								                echo "New Email: "
        	        		read -r Email
																								                echo "New age: "
				        read -r Age
																																											                sed -i "s/^$old_file/$PID-$Email-$Age/" "$filename"
			sleep 3	
																																											                echo "Successfully Updated"
	                ;;
																																											        "3")
																						                echo "You can now delete a file that contain the student record"
																																											                echo "Enter the student PID: "
	                read -r PID
																						                filename="students-list_0333.txt"
																																											                sed -i "/$PID/d" "$filename"
																																											                echo "Student file deleted"
																						                ;;
																																											        "4")
																						                echo "This is the list of students"
																						                cat "students-list_0333.txt"
																						                ;;
																																																																        "5")
																						                echo "Exiting "
																						                exit 0
																						                ;;
																						        *)
																						                echo " Invalid option"
																						                ;;
																																										esac
