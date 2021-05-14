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

  def prepend(value)
    new_node = Node.new(value)
    @tail.next_node = new_node
    new_node.last_node = @tail
    @tail = new_node
    @size += 1
  end

  def at(index)
    if index <= @size
      counter = 1
      current_node = @head
      until counter == index
        current_node = current_node.next_node
        counter += 1
      end
      current_node
    else
      raise ' Location does not exist'
    end
  end

  def pop
    removed = @tail
    @tail = @tail.last_node
    @tail.next_node = nil
    @size -= 1
    removed
  end

  def contains?(value)
    this_node = @head
    boolean = false
    until this_node.next_node.nil?
      case this_node.value
      when value
        boolean = true
        this_node = this_node.next_node
      else
        this_node = this_node.next_node
      end
    end
    boolean
  end

  def find(value)
    found_node = @head.next_node
    case value
    when @head.value then @head
    when @tail.value then @tail
    else
      found_node = found_node.next_node until found_node.value == value
      found_node
    end
  end

  def insert_at(value, index)
    if index <= @size
      new_node = Node.new(value)
      target = at(index)
      before_target = target.last_node

      new_node.next_node = target
      new_node.last_node = before_target

      before_target.next_node = new_node
      target.last_node = new_node
    else
      raise ' Location does not exist'
    end
    @size += 1
  end

  def remove_at(index)
    if index <= @size
      target = at(index)
      target.last_node.next_node = target.next_node
      target.next_node.last_node = target.last_node
    else
      raise ' Location does not exist'
    end
    @size -= 1
    return target
  end

  def print_list
    counter = 0
    puts ''
    puts 'Showing Nodes from First to last:'
    current_node = @head
    next_to_print = @head.next_node

    until counter == @size
      current_node.node_info
      current_node = next_to_print
      next_to_print = current_node.next_node unless current_node.next_node.nil?
      counter += 1
    end
    puts '## Node Display Complete ##'
  end

  def to_s
    counter = 0
    print ' Start'
    current_node = @head
    until counter == @size
      print " -> (#{current_node.value}) "
      current_node = current_node.next_node
      counter += 1
    end
    print ' -> End'
    puts ''
  end
end
