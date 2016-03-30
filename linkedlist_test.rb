require 'pry'
gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'node.rb'
require_relative 'linkedlist.rb'

class LinkedListTest < Minitest::Test

  def test_it_can_create_a_new_linked_list
    list = LinkedList.new
    assert_equal LinkedList, list.class
  end

  def test_head_starts_out_as_nil
    skip
    list = LinkedList.new
    assert_equal nil, list.head
  end

  def test_it_can_append_data_to_the_list
    skip
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
  end

  def test_it_can_append_different_data
    skip
    list = LinkedList.new
    assert_equal "deep", list.append("deep")
  end

  def test_it_can_append_more_data
    skip
    list = LinkedList.new
    list.append("doop")
    assert_equal nil, list.head.next_node
    assert_equal "deep", list.append("deep")
    assert_equal 2, list.count
  end

  def test_you_can_ask_head_for_its_next_node
      skip
      list = LinkedList.new
      list.append("doop")
      assert_equal nil, list.head.next_node
  end


  def test_it_can_count_number_of_nodes
    skip
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal 2, list.count
  end

  def test_it_can_generate_a_string_of_all_the_data_in_the_list
    skip
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal "doop deep", list.to_string
  end

  def test_methods_work_together
    skip
    list = LinkedList.new
  end
end
