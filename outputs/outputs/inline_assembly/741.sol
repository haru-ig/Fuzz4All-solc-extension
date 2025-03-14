pragma solidity ^0.8.0;
contract Mutator14 {
 uint _counter;
 function init ( uint counter) public {
      _counter = counter;
 }
 function testMethod ( uint a, uint b ) public returns (uint) {
       if (b % 2 == 0 && a % 4 == 0 || b % 2 == 1 && a % 4 == 1) {
         _counter =  _counter + 1;
       }
      return _counter;
    }
}
