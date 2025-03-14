pragma solidity ^0.8.0;
contract Mutate12{
    int128 public _1;
    int128 public _2;
    constructor() public{
      _1 = 127;
        int128 s = (((int128)127) + 127) >> 128;
    }
    modifier onlyAdd {
      _1 += 1;
      _2 += 2;
      _;
    }
}
