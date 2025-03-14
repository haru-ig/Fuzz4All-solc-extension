pragma solidity ^0.8.0;
contract oldY {
    uint256 public x = 123;
    uint256 public constant y = 60;
    function f() public returns (uint256) {
      return x;
    }
    function func() public {
      uint256 y2 = y;
      uint256 z;
      while (x == 123) {
        x = 2;
        z = x + y;
        y = y2;
        y2 = y + x;
      }
    }
}


contract newW {
    uint256 public x = 123;
    uint256 public constant y = 60;
    function func() public returns (uint256) {
      uint256 z;
      uint256 y2 = y;
      while (x == 123) {
        x++;
        z = x + y;
        y = y2;
        y2 = y + x;
      }
      return z;
    }
}
