pragma solidity ^0.8.0;
contract Test {
uint256 public x = 5;
function f1(uint256 _z) public {
  assembly {
    if eq(eq(_z, add(5, 5)), 1) {
      log add(5, 5)
      x
    } else {
      revert(add(_z, sub(5, 5)) / add(5, 5), add(_z, sub(5, 5) - add(5, 5)), 5)
    }
  }
}
}
