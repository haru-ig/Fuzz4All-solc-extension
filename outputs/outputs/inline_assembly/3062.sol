pragma solidity ^0.8.0;
contract C {
  uint public a=0x10;
  uint public b;
  uint public c=a+b;
  function M() public {
    for (uint i=0;i<100;i++) {
      c%=(a+b);
      c%=(a+b);
      a*=0x2000;
      a%=b;
    }
    a-=b;
    c-=a;
    b+=c;
    a-=b;
    c-=c;
    a-=b;
    assert(c==1);
  }
}
