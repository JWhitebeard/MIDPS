#begginig message
system 'echo "Starting"'

##compiling the .cpp file
puts "Compiling the .cpp file . . ."
if system ('g++ -Wall -W -Werror hello.cpp -o C++hello')
  system 'echo "$(git add .)"'
  system 'echo "$(git commit -m "success message")"'
  puts "[done]"
else
  puts "[error]"

end

##compiling the .c fil
puts "Compiling the .c file . . ."
if system ('gcc -Wall -W -Werror hello.c -o Chello')
  system 'echo "$(git add .)"'
  system 'echo "$(git commit -m "success message")"'
  puts "[done]"
else
  puts "[error]"

end

##compiling the .java fil
puts "Compiling the .java file . . ."
if system ('javac hello.java')
  system 'echo "$(git add .)"'
  system 'echo "$(git commit -m "success message")"'
  puts "[done]"
else
  puts "[error]"

end

#run the executables from compilation

puts "Running the .cpp executable"
system 'echo "$(./C++hello)"'

puts "Running the .c executable"
system 'echo "$(./Chello)"'

puts "Running the .java executable"
system 'echo "$(java HelloWorld)"'

puts "Running the .rb executable"
system 'echo "$(ruby hello.rb)"'

puts "Running the .py executable"
system 'echo "$(python hello.py)"'
