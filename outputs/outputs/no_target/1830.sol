pragma solidity ^0.8.0;
contract Mutate12{
    uint public _1;
    uint public _2;
    uint public _3;
    uint public _4;
    constructor() public{
      _1 = uint10(10);
        uint s = (_1 << 128) >> 128;
    }
    modifier onlyAdd {
      _1 += 1;
      _2 += 2;
        _3 += 3;
      _4 += 4;
      _;
    }
}
