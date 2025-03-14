pragma solidity ^0.8.0;
contract Mutate11{
    uint128 public _1;
    uint128 public _2;

    constructor() public{
      _1 = 10;
      uint128 s1 = (_1 << 128) >> 128;
      uint128 s2;
  asm{
      s2 := mul(mload(0x40), mload(add(address(this), 0x20)))
      s1 := s1 + mload(0x30)
  }
    }
    modifier onlyAdd {
      _1 += 1;
      _2 += 2;
      _;
    }
}
contract Mutate0 {
    modifier onlyAdd {
      _1 += 1;
      _2 += 2;
      _;
    }
}
