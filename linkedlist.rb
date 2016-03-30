require_relative "node.rb"

class LinkedList

  attr_reader :head
  def initialize
    @head = nil
    @count = 0
  end

  #when a new list is created,
  #head starts out as nil
  #you have to append before

  def append(data)
    #when we append
    #1. create a new node
    #2. data goes into the node
    #3 when head = nil, new node becomes head
    #4 if not nil,new node = head.next_node
    @count += 1
    if @head == nil
      @head = Node.new(data)
    else
      @head.next_node = Node.new(data)
    end

    data
  end

  def count
    #when we create a new list
    #it has no NodeTest
    #appending adds 1 Node
    #the list can only get data from the head node
    #if the next node is nil,
    #you have reached the end of the list
    #and stop counting
    # while @next_node != nil
      #problematic b/c next node begins as nil
    #   @next_node
    #   @count += 1
    # end
    @count
  end

  def to_string
    #we want to collect the data from each node into an array
    #then use a method to get one string
    #this method will use the data method from Node
    #to have each node report its data
    @head.data
    #will work for now

  end



end
