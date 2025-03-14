pragma solidity ^0.8.0;
contract Test30005 {
    uint32 public aFirst;
    uint32 public aSecond;
    uint32 public aThird;
    constructor (uint32 a) public {
        emit Log();
        aFirst += a;
        aLast+= aFirst;
    }
    fallback () external {
        emit Log();
        aSecond = aFirst + aSecond;
        aThird = aSecond*a;
    }
    event Log ();
}
