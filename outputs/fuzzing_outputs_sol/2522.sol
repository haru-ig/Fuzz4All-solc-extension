pragma solidity ^0.8.0;
contract MutateStorage
{
  uint256[256] private storageValues;
  uint256 public storageValue;
  function fallback() public payable {
    storageValue += 5;
  }
  function increaseValue(uint256 amt) public {
    for (uint256 i=0; i < 256; i++) storageValues[i] += 1;
    storageValue += amt;
  }
  function increaseValue2() public {
    for (uint256 i=0; i < 256; i += 1) storageValues[(i * 256) + 2] += 1;
    storageValue += 42;
  }
}

pragma solidity ^0.8.0;
contract LoopIteration
{
  uint256 public counter = 0;
  function loop_test_mutated() public {
    while (counter < 1000000000) {
      counter += 1;
      counter += counter;
    }
  }
  function loop_test() public {
    for (uint256 i=0; i < 1000000000; i++) {
      counter += 1;
      counter += counter;
    }
  }
  function loop_test_two_loops() public {
    uint256 c;
    for (uint256 i=0; i < 2000000000; i++) {
      counter += 1;
      c = counter + counter;
      counter += c;
    }
    if (counter > 1000000000) counter = 1000000000;
  }
}
