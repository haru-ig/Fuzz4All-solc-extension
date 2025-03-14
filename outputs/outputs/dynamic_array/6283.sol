pragma solidity ^0.8.0;
library l {
  struct s {
    uint a;
    uint b;
  }

  address payable ownerAddress;
  bool isDead;
  s[] a;
  constructor() {
    a.push((<s>a.length));
  }

  function mutate() public {
    a.push((<s>a.length));
  }

  function pay(uint n) public {
    <address payable>x = <address payable>0x1;
    (uint y, uint) = a[n];
  }
}
