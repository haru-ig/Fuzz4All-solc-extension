pragma solidity ^0.8.0;
contract Modifications3_SEM {
    constructor(uint256 _x, uint256 _y) public{
      uint256 x = _x * _y;
      a = x;
      b = x > _y? x/_y : (x-a)/_y;
    }
    uint256 public a;
    uint256 public b;
}
