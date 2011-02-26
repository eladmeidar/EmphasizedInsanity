puts "generating new bag o' links"

current_date = Time.now

title = gets.chomp
year = current_date.year
month = current_date.month
day = current_date.day

filename = "_posts/#{year}-#{month}-#{day}-#{title.gsub(" ", '_')}.textile"
content=<<-EOF
--- 
title: #{title}
layout: post
---
EOF

File.open(filename, 'w') {|f| f.write(content) }

`mate #{filename}`
