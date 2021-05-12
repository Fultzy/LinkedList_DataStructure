# frozen_string_literal: true

require './lib/linkedlist'

val1 = '1: hello, im the first node here!'
val2 = '2: hello, im the second node here!'

list = LinkedList.new(val1, val2)
list.append('3: i am the third but i was pushed')
list.append('4: i was also pushed, im the fourth')
list.append('5: how did i get here?')
list.append('6: where am i?')
list.append('7: who are you people?')

list.append('and im the last one here.. owo')

list.print_list

puts ' Head of list:'
list.head.to_s

puts ' Tail of list:'
list.tail.to_s
