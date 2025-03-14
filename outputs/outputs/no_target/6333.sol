pragma solidity ^0.8.0;
library L {
  function f(uint8 a) public pure returns (uint256 b, uint256 c) {}
  function g() public pure returns (uint b, uint c) {}
}
contract B {
  function h(uint8 a) public pure returns (uint d, uint e) {
    (uint256 b, uint256 c) = D.f(a);
    (d, e) = L.f(a);
    return;
  }
}
