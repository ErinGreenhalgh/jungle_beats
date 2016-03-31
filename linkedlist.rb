require 'pry'
require_relative "node.rb"

class LinkedList

  attr_reader :head
  def initialize
    @head = nil
    @sounds = []
  end

  def find_tail
    current_node = @head
    until current_node.next_node.nil?
      current_node = current_node.next_node
    end
    current_node
  end

  def append(data)
    @sounds << data
    if @head.nil?
      @head = Node.new(data)
    else
      find_tail.next_node = Node.new(data)
    end
    data
  end

  def prepend(data)
    @sounds.unshift(data)
    prepended_node = Node.new(data)
    prepended_node.next_node = @head
    @head = prepended_node
    data
  end

  def count
    current_node = @head
    count = 1
    until current_node.next_node.nil?
      current_node = current_node.next_node
      count += 1
    end
    count
  end


  def to_string
    @sounds.join(" ")
  end

  def insert(index, data)
    count = 0
    node_after = @head
    until count == index
      node_before = node_after
      node_after = node_after.next_node
      count += 1
    end

    inserted_node = Node.new(data)
    node_before.next_node = inserted_node
    inserted_node.next_node = node_after
    @sounds.insert(index, inserted_node.data)

  end


end
