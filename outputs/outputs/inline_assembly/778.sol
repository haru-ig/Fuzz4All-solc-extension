pragma solidity ^0.8.0;
contract Mutator20 {
uint _counter;
function testMethod(uint a, uint  b) public {
uint x = a + b;
  if (x >= 5) {
      _counter =  _counter + a;
      if (a % 2 == 0) {
        _counter =  _counter + a - b;
      } else {
        _counter =  _counter - a - b;
      }
    }
}
}
