reader, writer = IO.pipe

fork do
  reader.close

  10.times do
    writer.puts "Another one bites the dust" # puts mean input one new line of string 
  end
end

writer.close
while message = reader.gets  # gets mean get one line of string
  $stdout.puts message
end
