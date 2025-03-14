pragma solidity ^0.8.0;
contract Test
{
  uint256 public constant constant1 = 1.0;

  function test1(uint256 param) public {
    require(param==constant1);
  }

  uint256 public constant constant2 = 2.0;

  function test2(uint256 param) public {
    require(param==constant2);
  }
}
