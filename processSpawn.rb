# 阻塞 blocking
system 'sleep 5'

# 非阻塞 non-blocking
Process.spawn 'sleep 5'

# 阻塞
pid = Process.spawn 'sleep 5'
Process.waitpid(pid)
