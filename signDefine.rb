puts Process.pid
trap(:INT) { print "you can't get me\n"}
sleep
