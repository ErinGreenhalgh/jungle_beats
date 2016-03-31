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
    list = LinkedList.new
    assert_equal nil, list.head
  end

  def test_it_can_append_data_to_the_list
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
  end

  def test_it_can_append_different_data
    list = LinkedList.new
    assert_equal "deep", list.append("deep")
  end

  def test_you_can_ask_head_for_its_next_node
      list = LinkedList.new
      list.append("doop")
      assert_equal nil, list.head.next_node
  end

  # def test_it_can_move_forward_in_the_list
  #   list = LinkedList.new
  #   list.append("doop")
  #   list.append("deep")
  #   list.append("dop")
  #   2.times {list.step_forward}
  #   assert_equal "dop", list.step_forward.data
  # end

  def test_it_can_find_a_tail
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal "deep", list.find_tail.data
    #find-tail returns the obj
  end

  def test_it_can_append_more_data
    list = LinkedList.new
    list.append("doop")
    assert_equal nil, list.head.next_node
    assert_equal "deep", list.append("deep")
  end


  def test_it_can_count_number_of_nodes
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal 2, list.count
  end

  def test_it_can_generate_a_string_of_all_the_data_in_the_list
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal "doop deep", list.to_string
  end

  def test_you_can_add_a_new_head
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    assert_equal "dop", list.head.data
    assert_equal "plop", list.head.next_node.data
    assert_equal "dop plop suu", list.to_string
  end

  def test_it_can_add_a_node_after_the_head
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")
    assert_equal "dop", list.head.data
    assert_equal "woo", list.head.next_node.data
    assert_equal "plop", list.head.next_node.next_node.data
    assert_equal 4, list.count
    assert_equal "suu", list.find_tail.data
    assert_equal "dop woo plop suu", list.to_string
  end

  def test_it_can_insert_a_node_into_the_middle_of_the_list
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(2,"woo")
    assert_equal "dop", list.head.data
    assert_equal "woo", list.head.next_node.next_node.data
    assert_equal 4, list.count
    assert_equal "suu", list.find_tail.data
    assert_equal "dop plop woo suu", list.to_string
  end

  def test_it_can_insert_a_node_at_the_head
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(0,"woo")
    assert_equal "woo", list.head.data
    assert_equal "dop", list.head.next_node.data
    assert_equal 4, list.count
    assert_equal "woo dop plop suu", list.to_string
  end

  def test_it_can_find_sounds_in_the_list
    list = LinkedList.new
    list.append("woo")
    list.prepend("deep")
    list.append("shi")
    list.append("blop")
    list.insert(3, "shu")
    assert_equal "shi", list.find(2,1)
    assert_equal "woo shi shu", list.find(1,3)
  end

  def test_it_cant_find_a_greater_number_of_sounds_than_exist
    list = LinkedList.new
    list.append("woo")
    list.prepend("deep")
    list.append("shi")
    list.append("blop")
    assert_equal "ERROR", list.find(2, 3)
  end

  def test_it_can_check_if_a_sound_is_in_the_list
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert list.includes?("deep")
    refute list.includes?("dep")
  end

  def test_you_can_remove_a_node_from_the_end
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal "blop", list.pop
    assert_equal "shu", list.pop
    assert_equal "deep woo shi", list.to_string
  end

end
