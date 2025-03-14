pragma solidity ^0.8.0;
contract A {
  function f() public pure {

  }
  function f(uint256 _x) public pure {
    require(_x > 0);
  }
  function f(uint256 _x, uint256 _y) public pure {
    require(_x > 0);
    require(_y >= 0);
  }
  function f(uint8 _x) public pure {
    require(_x >= 0);
  }
}
