#something like this? 

#Take current directory that this file is in (how does that work with a gem? is the gem considered in the directory it is bundled in?)

#Iterate through all of the files in that directory, open them, search through them line by line, and then delete that string. 

File.open "#{file_name}" do |file|
  file.find do |line|
    line.slice!("binding.pry")
    #the return of this loop is the string "binding.pry". Does the return value need to be the line sliced?
  end
end