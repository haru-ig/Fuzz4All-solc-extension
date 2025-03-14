pragma solidity ^0.8.0;
contract C {
  uint public a;
  uint public b;
  uint public c;
  function M() public {
    for (uint i=0;i<100;i++) {
      c%=(a+b);
      c%=(a+b);
      a*=0x2000;
      a%=b;
    }
    c-=b;
    a-=c;
    b-=a;
    a-=b;
    c-=b;
    a-=b;
    c-=a;
    b-=a;
    a-=a;
    b-=c;
    c-=c;
    b-=b;
  }
}
