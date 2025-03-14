pragma solidity ^0.8.0;
contract Test90005 {
    address[10] aFirst;
    uint32[] aSecond;
    uint32 second;
    uint32 third;
    uint32[] aThird;
    constructor (uint32 a) public {
        aFirst = new address[](1);
        aFirst[0] = address(this);
        aSecond = new uint32[](2);
        aSecond[0] = a;
        aSecond[1] = a;
        second = a; }
    fallback () external {
    }
    event Mutate ();
}
