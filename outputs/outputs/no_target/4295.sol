pragma solidity ^0.8.0;
contract L {
  function F() public pure returns (uint p) {
  }
}
library L {
  function F() public pure returns (uint p) {}
}
library L {
  F = F;
}
library L {
  external F() public pure returns (uint i) { }
}
library L {
  F() public pure returns (i) { public }
  external F() public pure returns () { }
}
contract M {
  function F() public pure returns (uint p) {
  }
}
