pragma solidity ^0.8.0;
contract Mutator20 {
uint _counter;
function testMethod(uint a, uint  b) public {
      if (a > 10) {
        if (a % 2 == 0) {
          _counter = a - b;
        } else {
          _counter = _counter + b;
        }
      }
 }
}
