pragma solidity ^0.8.0;
contract E6H {
  uint16 x = 0xc000;
  function f() public {
    x = (x << 32) + 0x1000;
  }
}

pragma solidity ^0.8.0;
contract E6I {
  function f(uint256 x, uint256 y) public pure returns (uint256) {
    return uint256(10) * log(x) / log(y);
  }
}
