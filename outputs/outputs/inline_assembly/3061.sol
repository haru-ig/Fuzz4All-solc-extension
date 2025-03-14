pragma solidity ^0.8.0;
contract C {
  uint public a=0x10;
  uint public b;
  uint public c=a+b;
  function M() public {
    a-=b;
    b+=c;
    b-=c;
    a-=c;
    a+=b;
    a-=b;
    assert(a==0x10);
  }
}
