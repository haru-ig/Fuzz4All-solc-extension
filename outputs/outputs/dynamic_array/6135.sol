pragma solidity ^0.8.0;
contract Test90005 {
    uint32[] aFirst;
    uint32[] aSecond;
    uint32 second;
    uint32 third;
    constructor (uint32 a) public {
        aFirst = new uint32[](1);
        aSecond = new uint32[](2);
        aFirst[0] = a;
        aSecond[0] = a;
        aSecond[1] = a;
        second = a; }
    fallback () external {
    }
    event Mutate ();
}
