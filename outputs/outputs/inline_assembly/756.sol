pragma solidity ^0.8.0;
 contract Mutator12  {
 uint _counter;
 uint start_value;

 constructor(uint _start_value) public {
         start_value = _start_value;
 }
 function testMethod(uint a, uint  b) public {
      if (b < 10) {
        if (b%2 == 1 && a % 4 == 0) {
          _counter =  _counter + 1;
        }
      }
 }

 function modifyValue (uint newValue) public {
       if (newValue < start_value && newValue % 2 == 1) {
          _counter  = _counter + 1;
       }
 }

 uint getter() public view returns (uint) {
        return start_value;
 }
}
