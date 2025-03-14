pragma solidity ^0.8.0;
contract B2a {
   constructor () { }
   function uintStr(uint index, uint _uint) public pure returns (B2.strUint memory) {
      return B2.strUint(0, _uint);
   }
   function strUint(uint _uint) public pure returns (uint) {
      return 0;
   }
}
