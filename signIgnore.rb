puts Process.pid
trap(:INT, "IGNORE")
sleep
