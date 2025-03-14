pragma solidity ^0.8.0;
contract Caller {
   function f1() public returns (int) {
      InvalidFallback v = new InvalidFallback;
      return v.f2();
   }
}
