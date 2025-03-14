pragma solidity ^0.8.0;
contract P7{
  uint internal x;
  function h() internal { x += 1; }
}
contract P8{
  uint internal x;
  function h() internal { x *= 2 ** 1; }
}
contract P9{
  uint internal x;
  function h() internal pure { x += 1; }
}



contract Test{
 uint internal x;
 function test() public{
  assert(x + 1 > 2);
 }
}
contract TestContract{
  contract C{ uint internal x; constructor () public {x = 1;}  function f() public returns(uint) {return x;} }

  uint internal x;
  function g() public returns(uint) {return x;}
}
pragma experimental ABIEncoderV2;
contract TestABI{
  uint internal x;
  function g() public pure returns(uint) {return x;}
}
contract TestABI0{
  uint internal x;
  function g0() public pure returns(uint) {return x;}
}
contract TestABI2{
  uint internal x;
  function g2() public pure returns(uint) {return i_g2();}
  function i_g2() internal pure returns(uint) {return x;}
}
