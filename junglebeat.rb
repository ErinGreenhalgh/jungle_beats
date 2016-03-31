require_relative 'linkedlist.rb'

class JungleBeat
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(data)
    sounds = data.split(" ")
    sounds.each do |index|
      @list.append(index)
    end
    data
  end

  def count
    @list.count
  end

  def play
    beats = @list.to_string
    `say -r 500 -v Boing #{beats}`
  end


end
