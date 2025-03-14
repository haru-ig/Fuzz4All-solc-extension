pragma solidity ^0.8.0;
contract Test90006 {
    struct S
    {
        uint32 x;
        uint32 y;
    }

    S s1;
    constructor (uint32 data) public
    {
        s1.x = data; }

    fallback () external {
        assembly {
            s1 := mload(0x40)
        }
    }
    uint32[46] a1;
    uint32[46] a2;
    uint32[46] data1;
    uint32[46] data2;
    uint32[46] address1;
    uint32[46] address2;
    uint32[46] abiencoded1;
    uint32[46] abiencoded2;
    event Mutate ();
}
