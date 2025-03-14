pragma solidity ^0.8.0;
contract E {
  function f(uint256 x, uint8 y) public returns (uint8) {
    return x * 2 / 2 + y;
  }
}

contract Main {
  function run() public {
    D d;
    D calldata d2 = d;
    assert_eq(uint256(1), d2.f(uint8(1)));
    E e;
    E calldata e2 = e;
    assert_eq(uint8(4), e2.f(uint256(1), uint8(1)));
  }
  function _() public {}
}
