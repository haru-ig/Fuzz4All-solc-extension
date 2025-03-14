pragma solidity ^0.8.0;
contract C1 {
  uint public a;
  uint public b;
  function C1() public {
    a = 0x100;
    b = a*2;
    b = a / 4;
    a+=b;
    assert(a==0x20);
    assert(b==200);
  }
}
