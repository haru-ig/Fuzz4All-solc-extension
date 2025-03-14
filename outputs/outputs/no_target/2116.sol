pragma solidity ^0.8.0;
contract Modifications3{
  using Modifications3 for uint256;
  constructor(uint256 _s, uint256 _i) public {
    uint256 x = _s * _i;
    a = x + _s / 2;
    b = x * _i / 2;
  }
}

pragma solidity ^0.8.0;
