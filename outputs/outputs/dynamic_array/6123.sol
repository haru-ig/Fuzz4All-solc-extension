pragma solidity ^0.8.0;
contract Test30004 {
    uint32[] public aFirst;
    uint32[] public aSecond;
    uint32[] public aThird;
    uint32 public aFirst1;
    uint32 public aSecond1;
    uint32 public aThird1;
    constructor (uint32 a) public {
        aFirst = new uint32[](1);
        aSecond = new uint32[](2);
        aThird = new uint32[](3);
        aFirst[0] = a;
        aSecond[0] = a;
        aSecond[1] = a;
        aThird[0] = a;
        aThird[1] = a;
        aThird[2] = a;
        aThird1 = a;



    }
    fallback () external {
        emit Mutate();
    }
    event Log ();
    event Mutate ();
}
