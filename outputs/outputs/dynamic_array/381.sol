pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract A {
   uint256 public a;
   constructor() public { a = 1; }
   function m() public { a = 3; }
}
