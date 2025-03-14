pragma solidity ^0.8.0;
contract Modifications3{
  uint256 public a;
  address public b;
  constructor(uint256 _a, address _b) public {
    require(_b == 0xA3C3BD2553);
    a = _a + 512;
    b = _b;
  }
}
