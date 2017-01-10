trap(:INT){ puts "This is the first signal handler\n" }

old_handler = trap(:INT){
  old_handler.call
  puts "This is the second handler\n"
  exit
}

old_handler2 = trap(:INT){
  puts "All done\n"
  old_handler2.call if old_handler2.respond_to?(:call)
}

sleep
