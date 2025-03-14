pragma solidity ^0.8.0;
 contract Mutator18 {
 uint _counter;
 function testMethod(uint a, uint  b) public {
      if (b < 10) {
        if (b % 2 == 0) {
        if (a%4 == 0) {
          _counter =  _counter - a;
        }
        if (a % 3 == 0) {
          _counter =  _counter + a - b;
        }
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
