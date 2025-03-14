pragma solidity ^0.8.0;
contract Mutator2 {
uint _counter;
function testMethod() public {
      if (true) {
        if (true) {
          _counter =  _counter + 1;
        } else {
          _counter =  _counter + 2;
        }
      }
 }
}
