pragma solidity ^0.8.0;
contract Main {

    uint8 i1: [4];
    uint16 i2: [2];
    uint32 i4: [2];
    uint64 i8: [32];

    uint8[] i: [5];
    uint8[] i1: [4];
    uint8[] i2: [2];
    uint8[] i4: [2];
    uint8[] i8: [32];

    uint16 s: [5];
    uint16 s1: [4];
    uint16 s2: [2];
    uint16 s4: [2];
    uint16 s8: [32];

    uint32 u: [5];
    uint32 u1: [4];
    uint32 u2: [2];
    uint32 u4: [2];
    uint32 u8: [32];

    uint64 b: [5];
    uint64 b1: [4];
    uint64 b2: [2];
    uint64 u64: [32];

    struct StructStore {
    uint i: [3];
    uint8 i8: [2];
    uint16 i16;
    uint32 i32;
    uint64 i64;
    uint8 b: [4];
    uint16 s;
    uint8[] i82;
    uint16[] i162;
    uint32[] i322;
    uint64[] i642;
    uint8[10] i83;
    uint16[5] i163;
    uint32[3] i323;
    uint64[1] i643;
    uint32[] i324;
    uint8[] i84;
    uint16[] i164;
    uint32[] i324;
    uint64[] i644;
    }

    StructStore[] arrayStore: [20];
    StructStore[] nested: [2];

    struct StructStore2 {
    uint[][] i;
    uint[][] i1;
    uint[9][] i11;
    uint[][][][][] i111;
    }

    function initialize() public {
        nested = [structs.StructStore({i: [1..2], i1: [1:2], i11: [1:2], i111: [1:1:2]}),structs.StructStore(1)];
        arrayStore = [structs.StructStore({i: [0..5]}),structs.StructStore({i: [2..7]})
