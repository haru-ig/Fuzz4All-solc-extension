pragma solidity ^0.8.0;
 contract Mutator13 {
 uint _counter;

 function testMethod(uint a, uint  b) public {
      if (b%2 == 0 && a % 4 == 0 || b%2 == 1 && a % 4 == 1) {
 _counter =  _counter + 1;
     }
 }
}
