pragma solidity ^0.8.0;
contract S1 {
  uint256 internal constant i = 0;
  function f(uint x) public returns (uint256, uint) {
    uint256 a;
    uint256 res;
    a = f2(i);
    res = f1(uint8(x));
    uint256 b = f3(uint8(a));
    return (b, a);
  }
}
