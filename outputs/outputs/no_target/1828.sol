pragma solidity ^0.8.0;
contract Mutate11{
    uint public _1;
    uint public _2;
    constructor() public{
      _1 = 10;
        uint s = (_1 << 128) >> 128;
    }
    modifier onlyAdd {
      _1 += 1;
      _2 += 2;
      _;
    }
}
