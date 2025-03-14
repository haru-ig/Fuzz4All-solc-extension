pragma solidity ^0.8.0;
contract F {
  bytes[1][1] private x;
  function f() public {
    bytes x_orig[1][1] = x;
    for (uint i=0; i < 9; ++i) {
      x[i]=x[i+1];
    }
  }
}
