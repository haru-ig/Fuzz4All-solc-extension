pragma solidity ^0.8.0;
contract C {
  uint public a=0x10;
  uint public b;
  uint public c=a+b;
  function M() public {
    a-=b;
    b-=c;
    b-=b;
    c-=b;
    b-=b;
    c-=b;
    b-=-b;
    b-=b;
    c-=a;
    b-=a;
    a-=b;
    b-=c;
    a-=b;
    c-=a;
    a-=b;
    assert(c==0);
  }
}
