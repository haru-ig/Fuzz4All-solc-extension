pragma solidity ^0.8.0;
contract Modifications3{
  uint256 public a;
  uint256[2] public b;
  uint256 public c;
  address public t1;
  constructor(uint256 _a, uint256[2] memory _b, uint256 _c, address _t1) public {
    require(t1 == _t1);
    a = _a;
    b = _b;
    c = _c + 750;
  }
}
