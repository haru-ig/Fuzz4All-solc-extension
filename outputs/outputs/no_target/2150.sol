pragma solidity ^0.8.0;
contract Modifications3_MEM_semantic_equiv {
    constructor(uint256 _x, uint256 _y) public{
      uint256 c = b - a < 0? (a - _x)/_y : b - a;
      uint256 d = a / (_x - b) + (_x - b)*(c<0?1:(c>0?1:0));
    }
    uint256 public a;
    uint256 public b;
}
