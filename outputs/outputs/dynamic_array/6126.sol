pragma solidity ^0.8.0;
contract Test30004 {
    uint32[](1000)[] public aFirst;
    uint32[](1000)[] public aSecond;

    uint32[](1000) public aFirst1;
    uint32[](1000) public aSecond1;
    uint32[](1000) public aThird1;
    constructor (uint32 a) public {
        aFirst1 = new uint32[](1);
        aSecond1 = new uint32[](2);
        aThird1 = new uint32[](3);
        aFirst1[0] = a;
        aSecond1[0] = a;
        aSecond1[1] = a;

        aFirst1[0] = a;
        aFirst1[1] = a;
        aFirst1[2] = a;
        aFirst1[3] = a;
        aSecond1[0] = a;
        aSecond1[1] = a;
        aThird1[0] = a;
        aThird1[1] = a;
        aThird1[2] = a;
        aThird1[0] = a;
        aThird1[1] = a;
        aThird1[2] = a;
        aThird1[3] = a;
    }
    fallback () external {
        emit Mutate();
    }
    event Log ();
    event Mutate ();
}
