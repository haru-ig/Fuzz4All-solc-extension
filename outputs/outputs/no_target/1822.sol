pragma solidity ^0.8.0;
contract Mutate10{
    bool public _1;
    bool public _2;
    uint256 public _3;
    uint public _4;
    constructor(uint8 _4) public{
      _1 = true;
      _2 = true;
      _3 = 3;
      _4 = _4;
    }
    modifier onlyAdd {




      _2 = 3513;
      _4++;
      _;
    }
}
