pragma solidity ^0.8.0;
contract SafeMath {
   function safemod(uint a, uint b) public pure returns (uint) {
    unchecked {
       return safeMod(a, b);
    }
   }
   function safemul(uint a, uint b) public pure returns (uint) {
    unchecked {
       return safeMul(a, b);
    }
   }
}
