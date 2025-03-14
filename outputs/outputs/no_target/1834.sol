pragma solidity ^0.8.0;
contract Mutate11{
    uint128 public _1;
    uint128 public _2;
    constructor() public{
      _1 = 10;
        uint128 s = (_1 << 128) >> 128;
    }
    modifier onlyAdd {
      _1 += 1;
      _2 += 2;
      _;
    }
}
