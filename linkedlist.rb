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


end
