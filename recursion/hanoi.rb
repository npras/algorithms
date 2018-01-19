#The objective of the puzzle is to move the entire stack to another rod, obeying the following simple rules:

#Only one disk can be moved at a time.
#Each move consists of taking the upper disk from one of the stacks and placing it on top of another stack.
#No disk may be placed on top of a smaller disk.
#With 3 disks, the puzzle can be solved in 7 moves. The minimal number of moves required to solve a Tower of Hanoi puzzle is 2n − 1, where n is the number of disks.


require 'minitest/autorun'


def hanoi(n, peg_source:, peg_target:, peg_tmp:)
  if n > 0
    # display progress
    p "move #{$moves}---------"
    p "a: #{$a}"
    p "b: #{$b}"
    p "c: #{$c}"
    p '---------'
    
    $moves += 1
    # move n - 1 disks from source to auxiliary, so they are out of the way
    hanoi(n - 1, peg_source: peg_source, peg_target: peg_tmp, peg_tmp: peg_target)

    # move the nth disk from source to target
    peg_target.append peg_source.pop
    
    # move the n - 1 disks that we left on auxiliary onto target
    hanoi(n - 1, peg_source: peg_tmp, peg_target: peg_target, peg_tmp: peg_source)
  end
end


$moves = 0
$a = (1..3).to_a.reverse # source
$b = [] # auxillary
$c = [] # target

p 'START======='
p $a
p $b
p $c
p '======='

start_size = $a.size
# initiate call from source A to target C with auxiliary B
hanoi(start_size, peg_source: $a, peg_target: $c, peg_tmp: $b)

p 'END======='
p $a
p $b
p $c
p '======='
p "expected steps: #{2**start_size - 1}"
p "actual moves: #{$moves}"
#class TestThis < Minitest::Test

  #def test_hanoi
  #end
#end
