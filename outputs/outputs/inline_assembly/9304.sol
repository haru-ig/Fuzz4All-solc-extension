pragma solidity ^0.8.0;
contract C {
   uint MINIMUM;
   uint MAXIMUM;
   uint constant RANGE = 10;
   uint constant RANGE2 = 10;
   uint MINIMUM2 = 10;
   uint constant MAXIMUM2 = 10;
   uint myVar;
   uint myVar2;
   function myFunction() public returns(uint) {
      uint r = 0;
      uint myVar3;
      uint myVar4;
      r = myVar + myVar2;
      myVar3 = myVar3 + myVar4;
      myVar4 = max(myVar3, myVar4);
      return myVar4;
   }
   function max(uint a, uint b) public pure returns (uint) {
      return a > b? a : b;
   }
}

pragma solidity ^0.8.0;
contract D {

   uint constant DECIMAL_CONSTANT = 0.01;
   function aNumber() public pure returns (uint) {
      return uint(DECIMAL_CONSTANT);
   }
}


contract E {

   uint constant DECIMAL_CONSTANT = 0.01;
   function aNumber() public pure returns (uint) {
      return uint(DECIMAL_CONSTANT);
   }
}
