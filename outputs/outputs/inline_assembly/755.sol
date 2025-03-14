pragma solidity ^0.8.0;
 contract Mutator18 {
 uint _counter;
 function testMethod(uint a, uint  b) public {
      if (b < 10) {
        if (b%2 == 1 && a % 4 == 0) {
          _counter =   _counter + 1;
        }
      }
 }
}
