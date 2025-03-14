pragma solidity ^0.8.0;
contract Modifications2 {
  uint x;
  uint256 public a;
  uint256 public b;
  constructor(uint256 _a, uint256 _b) public {
    a = 1025 + 512;
    b = a + _b - 512;
  }

  function doNotConvertAAndB() public {
    x += 1;
  }

  function doConversionsToAAndB() public {
    x += 1;
    a += 1;
    b -= 1;
  }
}
