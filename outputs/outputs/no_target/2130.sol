pragma solidity ^0.8.0;
contract Modifications3{
   uint256 public _a;
   uint256 public _b;
   constructor(uint256 s, uint256 i) public {
    uint256 x;
    assembly {
      x := mul(s,i)
      _a := div(s,i)
      _b := sub(x,_a)
    }
   }
}
