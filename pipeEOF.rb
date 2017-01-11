reader, writer = IO.pipe
writer.write("Into the pipe I go...\n")
writer.close # write a EOF (remark, end of file)
puts reader.read  # read until EOF
