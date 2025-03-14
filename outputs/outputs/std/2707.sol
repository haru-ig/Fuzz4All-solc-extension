pragma solidity ^0.8.0;
contract Semantics {
   function nonConstant() public view returns (uint8) {
       return Constant.ONE;
   }
   function constant() public view returns (uint8) {
       return nonConstant;
   }
}
