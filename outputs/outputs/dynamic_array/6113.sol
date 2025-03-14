pragma solidity ^0.8.0;
contract Test30004 {
    uint32 public aFirst;
    uint32 public aSecond;
    uint32 public aThird;
    constructor (uint32 a) public {
        emit Log();
        aFirst = a;
    }
    fallback () external {
        emit Log();
    }
    event Log ();
}
