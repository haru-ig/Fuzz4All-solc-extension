pragma solidity ^0.8.0;
struct MutatedStructWithNestedArrays {
    uint128[4] array3;
    uint[2] nested1Ints;
    bool nested1Boolean;
    StructWithNestedArrays nested2Array;
}
