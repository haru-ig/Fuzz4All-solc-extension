pragma solidity ^0.8.0;
contract Mutator19 {
uint _counter;
function testMethod(uint a, uint  b) public {
      if (a > 10) {
        if (a % 2 == 0) {
          _counter =  _counter + a - b;
        } else {
          _counter =  _counter - a;
        }
      }
 }
}
