pragma solidity ^0.8.0;
contract Mutant7b
{
  uint8 x;
  uint8 value;
  uint8 y;
  function f() public {
    x = 1;
    setX();
    revert(1);
  }
  function setX() public {
    y = x + 1;
  }
  function g() public {
    y = 3;
    assembly {
      revert(1)
    }
  }
  receive() external payable {}
}
