require "./ceo"
require './sales_manager'
require './intern'

ali = Ceo.new(15, 20, 'ali', 1234)

puts ali.total_compensation

john = SalesManager.new(15, 10000)

