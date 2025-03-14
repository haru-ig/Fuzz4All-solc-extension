pragma solidity ^0.8.0;
contract C {
  uint public a;
  uint public b;
  uint public c;
  function M() public {
    a=0x10;
    a+=b;
    b+=c;
    c=a-b;
    assert(c==10);
  }
}
