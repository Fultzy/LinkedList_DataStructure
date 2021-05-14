# frozen_string_literal: true

require './lib/linkedlist'

# creation and default values
val1 = '1: hello, im the first node here!'
val2 = '2: hello, im the second node here!'

list = LinkedList.new(val1, val2)

# apending prepending mix
list.append('3: i am the third but i was pushed')
list.append('4: i was also pushed, im the fourth')
list.append('5: how did i get here?')
list.prepend('6: prepended!! where am i?')
list.prepend('7: prepended!! who are you people?')
list.append('8: and im the last one here.. owo')

# readouts
list.print_list
puts ''

puts ' Head of list:'
list.head.node_info

puts ' Tail of list:'
list.tail.node_info
puts ''

# info fetching
puts ' Node in 3rd position:'
list.at(3).node_info
puts ' Node in 5th position:'
list.at(5).node_info

puts ' Finding values 7 & 2:'
list.find('7: prepended!! who are you people?').node_info
list.find('2: hello, im the second node here!').node_info

puts ' true/false'
p list.contains?('1: hello, im the first node here!')
p list.contains?(:bad_object)
puts ''

puts ' Pop off king!'
puts "#{list.size} nodes before pop"
list.pop.node_info
puts "#{list.size} nodes after pop"
list.tail.node_info

puts ' insert 9 in position 4:'
list.insert_at('9: ive been placed inside the line!', 4)
list.at(4).node_info

puts " #{list.size} nodes left"
puts ' Remove the 3rd node:'
list.remove_at(3).node_info
puts " #{list.size} nodes left"
