# frozen_string_literal: true

class Node
  attr_accessor :next_node, :last_node
  attr_reader :value, :time

  def initialize(value)
    @time = Time.now.ctime
    @value = value
    @next_node = nil
    @last_node = nil
  end

  def node_info
    puts '###########################'
    puts " value: #{@value}"
    puts " Created: #{@time}"
    puts " next node: #{@next_node.nil? ? 'END of List' : @next_node.value}"
    puts " previous node: #{@last_node.nil? ? 'START of List' : @last_node.value}"
    puts ''
  end
end
