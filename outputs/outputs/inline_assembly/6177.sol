pragma solidity ^0.8.0;
contract MixedContractsExampleSem {
  struct MixedContacts {
      uint256 x;
      uint256 x1;
      uint256 x2;
      uint32 _0;
      uint32 _1;
      uint32 _2;
      bytes3 _3;
      bytes4 _4;
      bytes _5;
      bytes3 x4;
  }
  function main(uint64 witness) public pure {
    MixedContacts memory x;
    x.x=x.x+witness;
    address payable addr;
    uint(addr.balance);
    addr.payable.call{value:0}{$0}();
    x.y+=x.x1+witness;
    bytescallx=keccak(type.toBytecode());
  }
}
```

**Tip:**  These contracts can be compiled with the Solidity compiler 0.6.5 and above. The new compiler allows you to use assembly code. This feature allows you to perform functions like calling methods written in assembly language. In a few cases, the compiler uses assembly to achieve the same function but it will be much faster and use less gas (which is why in this case the compiler uses inline assembly). The new compiler also allows you to pass parameters even if they use the old language.
