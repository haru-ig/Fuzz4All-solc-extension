pragma solidity ^0.8.0;
contract newY {
    uint256 public x = 123;
    uint256 public constant y = 60;
    function f(uint256 x) public returns(uint256) {
      return x;
    }
    function func() public {
      uint256 z;
      while (x == 123) {
        x++;
        z = z + x + y;
      }
    }
}
