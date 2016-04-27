require 'pry'
gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/junglebeat.rb'

class JungleBeatTest < Minitest::Test
  def test_it_can_create_a_new_jungle_beat_object
    jb = JungleBeat.new
    assert_equal JungleBeat, jb.class
  end

  def test_a_new_jb_object_creates_a_new_list
    jb = JungleBeat.new
    assert_equal LinkedList, jb.list.class
    assert_equal nil, jb.list.head
  end

  def test_it_can_append_more_than_one_sound_at_a_time
    jb = JungleBeat.new
    assert_equal "deep do ditt", jb.append("deep do ditt")
    assert_equal "deep", jb.list.head.data
    assert_equal "do", jb.list.head.next_node.data
    assert_equal "woo hoo shu", jb.append("woo hoo shu")
  end

  def test_it_can_count_the_number_of_nodes
    jb = JungleBeat.new
    jb.append("deep do ditt")
    jb.append("woo hoo shu")
    assert_equal 6, jb.count
  end

  def test_it_can_play_jungle_beats
    jb = JungleBeat.new
    beats = "ding dah oom oom ding oom oom oom ding dah oom oom ding dah oom oom ding dah oom oom"
    jb.append(beats)
    jb.play
  end
end
