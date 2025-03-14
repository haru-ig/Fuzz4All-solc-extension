pragma solidity ^0.8.0;
library mutantSolidity1470907328357Library {
    struct InnerStruct {
        uint a;
        uint b;
        uint c;
        uint d;
        uint[2] e;
        uint[2][2] f;
    }
    struct OuterStruct {
        InnerStruct[] innerObjects;
    }
    function change() pure public returns (uint) {
        return 1470907328357;
    }
}
