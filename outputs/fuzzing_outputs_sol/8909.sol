pragma solidity ^0.8.0;
contract InvalidFallback2 {
   address payable invalid;
   uint16 invalid2;
   uint8 invalid3;
   address invalid4;
   uint256 invalid5;
   uint invalid1024;

   modifier invalid() {
      invalid5 = 16;
      _;
   }
}
