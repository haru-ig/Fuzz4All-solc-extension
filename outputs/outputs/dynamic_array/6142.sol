pragma solidity ^0.8.0;
contract Test90005 {
    uint32[5] aFirst;
    uint32[5] aSecond;
    uint32 third;
    uint32 fourth;
    uint32 fifth;
    uint32 second;
    uint32 goo;
    constructor (uint32 a) public {
        aFirst[0] = a;
        aSecond[0] = 0;
        aSecond[1] = a;
        aSecond[2] = a;
        aSecond[2] = a;
        aSecond[2] = a;
        aFirst[1] = a;
        aFirst[2] = a;
        aFirst[3] = a;
        aFirst[4] = a;
        second = a; }
    fallback () external {
    }
    event Mutate ();
}
contract Test90006 {
    struct StructA {
        int field;
    }
    contract B {
        struct StructB {
            int field;
        }
        StructB[5] internal _storage;
        constructor (uint32 a) public { _storage[2] = StructA(a * 10); }
        fallback () external pure {
        }
        event Mutate ();
    }
    event Mutate ();
}
