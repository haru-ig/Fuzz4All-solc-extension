pragma solidity ^0.8.0;
contract Mut2 {
   uint[16] private a;
   constructor(uint[] memory a_) {
       a = a_;
    }
   function setValue(uint index, uint value) public {
       a[index] = value;
   }
}
