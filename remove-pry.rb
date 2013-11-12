#open each file in a directory
#read text and find string
#delete string

File.open "#{file_name}" do |file|
  file.find do |line|
    line.slice!("binding.pry")
  end
end