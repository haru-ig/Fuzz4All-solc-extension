pragma solidity ^0.8.0;
contract Mutator14 {
 uint _counter;
 function testMethod(uint a, uint  b) public {
 if (b%2 == 0 && a % 4 == 0 || b%2 == 1 && a % 4 == 1) _counter =  _counter + 2;
 else _counter =  _counter + 1;
 }
}
contract Mutator15 {
 uint _counter;
 function testMethod(uint a, uint  b) public {
 if (b%2 == 1 && a % 4 == 0) _counter =  _counter + 1;
 else _counter =  _counter + 2;
 }
}
contract Mutator16 {
 uint _counter;
 function testMethod(uint a, uint  b) public {
 if (b%2 == 0 && a % 4 == 0 || b%2 == 1 && a % 4 == 1) _counter =  _counter + 2;
 else _counter =  _counter + 1;
 }
}
