pragma solidity ^0.8.0;
contract C9 {
    uint256 x;
    function f(uint256 y) public {
      x = y + 1;
    }
    function f2(uint256 i, uint256 y) public {
      x = i + y;
    }
    function f3(uint256 y) public {
      x = x + y;
    }
    function f4(uint256 i, uint256 y) public {
      x = i + y;
    }
}
