pragma solidity ^0.8.0;
contract Test90003 {
    uint32[] aFirst;
    uint32[] aSecond;
    uint32[] aThird;
    uint32 public first;
    uint32 public second;
    uint32 public third;
    constructor () external {
    }
    fallback () public {
    }
    event Log ();
    event Mutate ();
}
