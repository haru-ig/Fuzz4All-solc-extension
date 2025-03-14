pragma solidity ^0.8.0;
contract MutatorI {
 uint _counter;
 function testMethod(uint a, uint  b) public {
      _counter =  a + b;
 }
}
contract MutatorII {
 uint _counter;
 function testMethod(uint a, uint  b) public {
      b = b - 2;
      _counter =  a + b;
 }
}
contract Mutator3 {
 uint _counter;
 uint b;
 function testMethod(uint a, uint  b) public {
      _counter =  b + a;
 }
}
contract Mutator4 {
 uint _counter;
 uint b;
 function testMethod(uint a, uint  b) public {
      _counter =  b - a;
 }
}
