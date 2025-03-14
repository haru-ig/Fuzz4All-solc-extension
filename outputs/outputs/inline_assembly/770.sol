pragma solidity ^0.8.0;

contract Mutator20 {
  uint _counter;
  function testMethod(uint a) public {
      if (a >= 10) {
        if (a % 2 == 0) {
          _counter =  _counter - a;
          _counter =  _counter + a + 4 * 7;
        }
        if (a % 3 == 0) {
          _counter =  _counter + 10 + a - 2 * 1;
          _counter =  _counter + 6 * a;
          _counter =  _counter + 3;
        }
      }
    }
}
library HelloTest {
  function test() public pure returns (uint256)
  {
    return 1;
  }
}
