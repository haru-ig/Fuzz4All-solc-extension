pragma solidity ^0.8.0;
contract Modifications3_SEM {
    constructor(uint256 _x, uint256 _y) public{
      uint256 c = a - b < 0? (a - _x)/(b - a) : (b - a)/(a - _x);
      uint256 d = b - a / (a - _x) + (_x - b)*(1-c);
    }
    uint256 public a;
    uint256 public b;
}

pragma solidity ^0.8.0;
contract Modifications3_SEM2 {
    constructor(uint256 _x, uint256 _y) public{
      uint256 c = a - b < 0? (a - _x)/(b - a) : (b - a)/(a - _x);
      uint256 d = a - _y + (a - _y)*(1-c);
    }
    uint256 public a;
    uint256 public b;
}
