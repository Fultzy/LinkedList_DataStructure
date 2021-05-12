# frozen_string_literal: true

require_relative 'node'

class LinkedList
  attr_reader :head, :tail, :size

  def initialize(val1, val2)
    @head = Node.new(val1)
    @tail = Node.new(val2)
    @head.next_node = @tail
    @tail.last_node = @head
    @size = 2
    puts 'Initalized'
  end

  def append(value)
    new_node = Node.new(value)
    @head.last_node = new_node
    new_node.next_node = @head
    @head = new_node
    @size += 1
  end

  def prepent(value)
    new_node = Node.new(value)
    @tail = new_node
    @size += 1
    puts 'New Tail Node'
  end

  def at(index)
    if index <= @size
      raise ' not avalible '
    else
      raise 'Location does not exist'
    end
  end

  def self.pop
    removed = delete!
    @size -= 1
    return removed
    puts "#{removed} :: Has Been Deleted"
  end

  def contains?(value); end

  def find(value)
    case value
    when @head.value then @head
    when @tail.value then @tail
    else
      p 'why hello there..'
    end
  end

  def to_s; end

  def insert_at(value, index)
    if index <= @size
      new_node = Node.new(value)
    else
      raise 'Location does not exist'
    end
    @size += 1
  end

  def remove_at(index)
    if index <= @size

    else
      raise 'Location does not exist'
    end
    @size -= 1
  end

  def print_list
    counter = 0
    puts ''
    puts 'Showing Nodes from First to last:'
    current_node = @head
    next_to_print = @head.next_node

    until counter == @size
      current_node.to_s
      current_node = next_to_print
      next_to_print = current_node.next_node unless current_node.next_node.nil?
      counter += 1
    end
    puts '## Node Display Complete ##'
  end
end
