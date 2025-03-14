pragma solidity ^0.8.0;
contract Mutator17 {
 uint _counter;
 function testMethod(uint a, uint  b) public {
      if (b%2 == 1 && a % 4 == 1) {
 _counter =  _counter + 1;
     } else if (b%2 == 1 && a % 4 == 0 || b%2 == 0 && a % 4 == 1) {
 _counter =  _counter + 2;
     } else if (b%2 == 0 && a % 4 == 0 || b%2!=1 && a % 4 == 1) {
 _counter =  _counter + 3;
     } else {
 _counter =  _counter + 4;
     }
 }
}
contract Mutator18 {
 uint _counter;
 function testMethod(uint a, uint  b) public {
      if (b % 2!= 0 && a % 4!= 0) {
 _counter = a;
     } else if (b % 2!= 1 && a % 4!= 1) {
 _counter = a + 2;
     } else if (b%2!= 0 && a % 4 == 0) {
 _counter = a + 1;
     } else if (b % 2 == 0 && a % 4 == 1) {
 _counter = a + 3;
     } else if (b%2 == 1 && a % 4 == 0 || b%2 == 0 && a % 4 == 1) {
 _counter = a + 4;
     }
 }
}
contract Mutator19 {
 uint _counter;
 function testMethod(uint a, uint  b) public {
      if (b % 2 == 0 && a % 4 == 0 || b % 2 == 1 && a % 4 ==
