pragma solidity ^0.8.0;
contract LoopsAndException
{
  uint256 public counter;
  uint256 public i;
  function loop_test_mutated() public {
    counter += 1;
    for (i = 0; i < 10000000; i+= 1) {
      uint256 v = i + 1;
      if (v > 10000000) {
        throw 10;
      }
      counter += 1;
      counter += i;
    }
  }
  function loop_test() public {
    for (i=0; i < 10000000; i++) {
      uint256 v = i + 1;
      if (v > 10000000) {
        throw 10;
      }
      counter += 1;
      counter += i;
    }
  }
  function loop_test_two_loops() public {
    uint256 v;
    for (i=0; i < 10000000; i+=1) {
      v = i + 1;
      if (v > 10000000) {
        throw 10;
      }
      counter += 1;
      counter += i;
    }
    if (counter > 1
