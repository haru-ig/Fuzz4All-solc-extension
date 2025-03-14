pragma solidity ^0.8.0;
contract Test90005 {
    uint32[] aFirst;
    uint32[] aSecond;
    uint32[] aThird;
    uint32 public first;
    uint32 public second;
    uint32 public third;
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
        first = a;
        second = a; }
    fallback () external {
    }
    event Mutate ();
}
