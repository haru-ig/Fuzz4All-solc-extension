pragma solidity ^0.8.0;
contract Test90006 {
    struct {
        uint32 aFirst;
        uint32 aSecond;
        uint32 aThird; } b;
    constructor (uint32 a) public {
        b.aFirst = a;
        b.aSecond = a;
        b.aThird = a;
    }
    fallback () external {
    }
    event Mutate ();
}
