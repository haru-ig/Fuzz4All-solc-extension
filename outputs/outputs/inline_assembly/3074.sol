pragma solidity ^0.8.0;
contract C {
  uint public a;
  uint public b;
  uint public c;
  function M() public {
    for (uint i=0;i<50000;i++) {
      assert(a%=(a+b)==0x2000);
      assert(a%=(a+b)==0x2000);
      b%=0x2000;
      a%=0x2000;
      assert(b%=(a+b)==0x2000);
      a%=0x2000;
    }
  }
}
