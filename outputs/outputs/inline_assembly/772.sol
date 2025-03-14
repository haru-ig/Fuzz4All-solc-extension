pragma solidity ^0.8.0;
 contract Mutator17 {
 uint _counter;
 function testMethod(uint a, uint  b) public {
      if (b < 10) {
        if (b % 2 == 0) {
        if (a%4 == 0) {
          _counter = b;
      }
      if (a % 3 == 0) {
          _counter = b;
      }
    }
  }
}
library HelloTest {
  function test() public pure returns (uint256)
  {
    return 2;
  }
}
contract HelloMutatorTest {
  function test() public pure returns (uint256)
  {
    Mutator17 m = new Mutator17();
    return 1;
  }
}
