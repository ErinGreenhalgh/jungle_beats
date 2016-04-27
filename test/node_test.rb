
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node.rb'

class NodeTest < Minitest::Test

  def test_it_can_hold_data
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_next_node_begins_as_nil

  end


  def test_it_can_report_if_there_is_a_next_node
    node = Node.new("plop")
    assert_equal nil, node.next_node
  end

  def test_nodes_are_created_and_can_hold_data_and_can_report_next_node
    node = Node.new("plop")
    assert_equal "plop", node.data
    assert_equal nil, node.next_node
  end


end
