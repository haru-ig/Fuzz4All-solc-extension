pragma solidity ^0.8.0;
contract Constant {
   uint8 constant ONE = 1, ONE = 1, ONE = 1;

   constructor() {
      require(ONE!= 0, "First value should not be zero!");
      emit ConstantCreated();
   }

   event ConstantCreated();
}
