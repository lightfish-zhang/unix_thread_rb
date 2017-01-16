hosts = File.open('/etc/hosts')
puts hosts.fileno

exec 'python', '-c', "import os;nu = #{hosts.fileno}; print nu; print os.fdopen(nu).read();"
