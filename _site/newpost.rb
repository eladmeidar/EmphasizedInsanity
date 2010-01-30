puts "generating new bag o' links"

current_date = Time.now

title = ARGV[0]
year = current_date.year
month = current_date.month
day = current_date.day

filename = "_posts/#{year}-#{month}-#{day}-#{title}-#{day}-#{month}-#{year}.textile"
content=<<-EOF
--- 
title:
layout: post
---
EOF

File.open(filename, 'w') {|f| f.write(content) }

`mate #{filename}`
