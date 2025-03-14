pragma solidity ^0.8.0;
contract Modifications3{
  constructor(uint256 s, uint256 i) public {
    uint256 x = s * i;
    a = x + s;
    b = x * i;
  }

  function modification3() public {
    uint256 x = a * b;
    uint256 y = a * i;
    c = x + s;
    d = x * i;
  }
}
