puts "generating new bag o' links"

current_date = Time.now

year = current_date.year
month = current_date.month
day = current_date.day

filename = "_posts/#{year}-#{month}-#{day}-bag-o-links-#{day}-#{month}-#{year}.textile"
content=<<-EOF
--- 
title: Bag O' Links - #{day}/#{month}/#{year}
layout: post
---
EOF

File.open(filename, 'w') {|f| f.write(content) }

`mate #{filename}`
