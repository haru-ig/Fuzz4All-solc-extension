pragma solidity ^0.8.0;
contract MutantMutantContract {
  MutantMutantContract xul;
  bytes private bytesCode_;
  event MutantMutantInstanceCreated(address instance);
  constructor() {
    address mutantAddress = address(new MutantMutantContract());
    MutantMutantInstanceCreated(mutantAddress);
    xul = MutantMutantContract(mutantAddress);
    bytesCode_ = xul.g();
  }
  function f() private pure {
  }
  function m() public pure {
    bytes memory memorybytesCode_ = xul.c();
  }
  function g() public {

    MutantMutantInstanceCreated(address(new MutantMutantContract()));
    m();


  }
}



function main() {
  MutantMutantInstanceCreated(address(MutantMutantContract(address(new MutantMutantContract()))));
}
```

# Eth1581
## Remix
[Remix](https:
