Dir.glob("*.html").to_a.each do |filename|
  file = File.read(filename)

  if file.include?("<head>")
    puts "<head> tag exists"
  else
    new_file = "<head>\n  <link rel='stylesheet' href='style.css'>\n</head>\n" + file
    File.write(filename, new_file)
    puts "<head> tag injected into #{filename}"
  end
end
