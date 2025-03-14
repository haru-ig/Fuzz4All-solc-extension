pragma solidity ^0.8.0;
contract oldY {
    uint256 public x = 123;
    uint256 public constant y = 60;
    function f(uint256 x) public returns(uint256) {
      return x;
    }
    function func() public {
      while (x == 123) {
        x++;
        x = x + y;
      }
    }
  }
