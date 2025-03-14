pragma solidity ^0.8.0;
contract Test30005 {
    uint32 public aFirst;
    uint32 public aSecond;
    uint32 public aThird;
    constructor (uint32 a) public {
        aSecond = a + aFirst;
        emit Log();
    }
    fallback () external {
        emit Log();
    }
    event Log ();
}
contract Test30006 {
    uint32 public aFirst;
    uint32 public aSecond;
    uint32 public aThird;
    constructor (uint32 a) public {
        aThird += aSecond;
        emit Log();
    }
    fallback () external {
        emit Log();
    }
    event Log ();
}
