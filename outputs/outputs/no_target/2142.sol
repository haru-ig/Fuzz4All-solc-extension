pragma solidity ^0.8.0;
contract Modifications3 {
    constructor(uint256 _x, uint256 _y) public{
       uint256 x = _x * _y;
       address _address = address(this);
       a = x % _y;
        b = x / _y;
    }
   uint256 public a;
   uint256 public b;
}
