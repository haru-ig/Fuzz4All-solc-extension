pragma solidity ^0.8.0;
 contract Mutator17a {
 uint _counter;
 function testMethod(uint a, uint  b) public {
      if (b < 10) {
        if (b%2 == 1 && a % 4 == 0) {
          _counter =  _counter + 1;
        }
      }
 }
}

pragma solidity ^0.8.0;

contract Mutator17b {
 uint _counter;
 function testMethod (uint a, uint  b) public {
      if (b < 10) {
        if (b%2 == 1 && a % 4 == 0) {
          update (_counter,  _counter + 1);
        }
        else {
          update(_counter,_counter + 1);
        }
      }
 }
 function update(uint a, uint b) returns (bool) {
   _counter = b;
   return true;
 }
}
