pragma solidity ^0.8.0;
contract Mutator10 {
uint _counter;
function testMethod(uint a, uint  b) public {
      if (a > 10) {
        if (a % 2 == 0) {
          _counter = 10 - b;
        } else {
          _counter = _counter + b;
        }
      }
 }
}
