pragma solidity ^0.8.0;
library mutantSolidity68226996325Library {
    struct InnerStruct {
        uint a;
        uint b;
        uint[2] c;
        uint[2][2] d;
        uint[3] e;
        uint[3][2] f;
    }
    struct OuterStruct {
        InnerStruct[] innerObjects;
        bytes innerBytes;
        uint[] innerUints;
        uint[3] innerUints2;
    }
    function change() pure public returns (uint) {
        return 68226996325;
    }
}
