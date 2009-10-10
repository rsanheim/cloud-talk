def build_slides(file)
  cmd = "slidedown #{file}.md > #{file}.html"
  puts cmd
  system cmd
end

watch("^cloud\.(md|css)$") { |m| build_slides("cloud") }

Signal.trap 'INT' do
  puts "exiting..."
  exit
end

