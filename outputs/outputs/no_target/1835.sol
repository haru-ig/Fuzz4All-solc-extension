pragma solidity ^0.8.0;
contract Mutate9{
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

contract Mutate12 {
    uint128 public x;
    uint8 public constant y = 10;
    constructor(uint8 s) public {
        x = s;
    }
}
