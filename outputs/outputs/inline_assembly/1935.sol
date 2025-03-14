pragma solidity ^0.8.0;
contract testy {
    uint256 public x = 123;
    uint256 public constant y = 60;
    function f(uint256 x) public returns(uint256) {
        return x + x + y;
    }
    function func() public {
          uint256 z;
          while (!z > x) {
              x++;
              z = z + x + y;
          }
    }
}
