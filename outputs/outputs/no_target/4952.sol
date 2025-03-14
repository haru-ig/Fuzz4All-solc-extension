pragma solidity ^0.8.0;
library L {
  function f() public pure returns(uint256 b, uint256 c) {
    uint256 a = 0; uint b = 0; uint c = 0;
    (a, b, c) = (1, 2, 3);
    return (8, 7);
  }
}
contract test {
  function f() public returns(uint256 b_) {
    uint256 a; (a, b_) = L.f();
    return a;
  }
}
