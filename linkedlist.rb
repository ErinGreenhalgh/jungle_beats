require 'pry'
require_relative "node.rb"

class LinkedList

  attr_reader :head
  def initialize
    @head = nil
    # @sounds = []
  end

  def find_tail
    current_node = @head
    until current_node.next_node.nil?
      current_node = current_node.next_node
    end
    current_node
  end

  def append(data)
    # @sounds << data
    if @head.nil?
      @head = Node.new(data)
    else
      find_tail.next_node = Node.new(data)
    end
    data
  end

  def prepend(data)
    # @sounds.unshift(data)
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
    current_node = @head
    all_sounds =  ""
    count.times do
      all_sounds += current_node.data + " "
      current_node = current_node.next_node
    end
    all_sounds.chop
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
    # @sounds.insert(index, inserted_node.data)
  end

  def find(index, number_of_sounds)
    current_node = @head
    found_sounds = []
    index.times do
      current_node = current_node.next_node #turn this into its own method
    end

    number_of_sounds.times do
      found_sounds << current_node.data
      current_node = current_node.next_node
    end
    found_sounds.join(" ")
  end

  def includes?(data)
    current_node = @head
    until current_node.next_node.nil?
      if current_node.data == data
        return true
      else
        current_node = current_node.next_node
      end
    end
  end

    def pop
      current_node = @head
      until current_node.next_node.next_node.nil?
        current_node = current_node.next_node
      end
      last_data = current_node.next_node.data
      current_node.next_node = nil
      last_data
    end








end
