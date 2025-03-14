pragma solidity ^0.8.0;
contract Modifications3v0 {
    constructor(uint256 _x, uint256 _y) public{
       uint256 x = _x * _y;
       uint256 _a = x / _y;
       uint256 _b = x - _a/ _y;
       a = _a;
       b = _b;
    }
   uint256 public a;
   uint256 public b;
}
