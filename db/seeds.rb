puts "Page.count: #{Page.count}"
Page.destroy_all
Page.create! url: 'http://ya.ru/'
Page.create! url: 'https://ru.wikipedia.org/'
Page.create! url: 'http://darlion.ru/'
Page.create! url: 'https://www.google.ru/'
puts "Page.count: #{Page.count}"