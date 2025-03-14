pragma solidity ^0.8.0;
contract Test
{
  function test1(uint256 param) public {
    require(param==1);
  }
  uint256 public constant constant2 = 2;
  uint256 public constant constant3 = constant2;
  function test2(uint256 param) public {
    require(param==2);
  }
}
