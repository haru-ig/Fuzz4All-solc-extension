pragma solidity ^0.8.0;
contract oldY {
    uint constant newX = 123;
    uint constant newY = 60;
    uint256 public x;
    uint256 public constant y = 60;
    function f() public returns (uint) {
      return x;
    }
    function func(uint x) public {
      if (x == 123) {
        x++;
        uint z;
        while (x == 123) {
          x++;
          z = z + x + y;
        }
      }
    }
}
