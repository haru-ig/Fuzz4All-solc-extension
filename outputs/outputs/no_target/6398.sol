pragma solidity ^0.8.0;
contract mutatedC {
  uint256 f() public {
   uint160 a;
   (a) = 88 % 135;
   f();
   if(a - 15 < 10) {
     a = 15;
     b();
   }
  }
  function b() public {
    uint256 x = 88 % 135 ;
    f();
  }
}
