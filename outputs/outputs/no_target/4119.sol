pragma solidity ^0.8.0;
contract P2 {
  function p2() public {
    uint256 x = 44;
    (uint256 y, uint256 z) = (x, x * p3_internal);
    assert(z == (x * P3.h(x)));
    assert(y == x**P3.h(x));
  }
}
