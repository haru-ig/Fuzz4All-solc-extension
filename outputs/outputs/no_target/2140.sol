pragma solidity ^0.8.0;
contract Modifications3_SEM_v1 {
    constructor(uint256 _x, uint256 _y) public{
        uint256 x = _x * _y;
        b = x;
        uint256 x2 = b / _y;
    }
   uint256 public b;
}
