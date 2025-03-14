pragma solidity ^0.8.0;
 contract Mutator20 {

   uint _counter;
   uint256 public constant test = 1;
   address public constant OWNER = msg.sender;


   constructor(){
      _counter = 0;
   }

   function testMethod(uint a, uint  b) public{
      if (b < 10) {
        if (b % 2 == 0) {
          if (a%4 == 0) {
             _counter =  _counter - a;
          }
          if (a % 3 == 0) {
             _counter =  _counter + a - b;
          }
        }
      }
    }
}
