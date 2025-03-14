pragma solidity ^0.8.0;
contract P9{
  uint internal x;
  uint256 internal y;

  function f() public {
    x += -y;
    y = 1 ;
    x *= y;
  }
}
