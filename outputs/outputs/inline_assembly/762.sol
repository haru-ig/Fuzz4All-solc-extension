pragma solidity ^0.8.0;
 contract Mutator18 {
 uint _counter;
 function testMethod(uint a, uint  b) public {
      if (b < 10) {
       if (b%2 == 1) {
         if (a % 4!= 0) {
           _counter =  _counter - a;
         }
       }
     }
 }
}
contract Mutator19 {
 uint _counter;
 function testMethod(uint a, uint  b) public {
      if (b < 10) {
       if (b%2 == 1) {
         if (a % 4 == 0 || a%3!= 0) {
           _counter =  _counter + a - b;
         }
       }
     }
 }
}
