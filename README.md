# Nginx_Log_Analyzer
I wrote commands to analyze nginx logs from command line

### Prerequisites
- nginx log file
- downloaded script file

**Remember:** In the script, nginx-access.log is my log file name. If your file name is different or the file is stored in different directory then give the filename with the path in the awk command.

### Steps to Run
- Ensure the script and nginx file in same directory.
- Then, run the script.

**Note:** If you got a different output that means the fields should be different on your log file. Even, in the log file I used from the roadmap.sh some logs have less fields. So, I decided to run the awk commands only for matching fields. If you got error change the field number in the script.

https://roadmap.sh/projects/nginx-log-analyser