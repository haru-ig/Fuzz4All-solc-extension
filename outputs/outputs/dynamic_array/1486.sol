pragma solidity ^0.8.0;
contract SemanticsEquivalentEfficientDynamicArrayType5 {
    struct TestStruct {
        uint256[2] public a;
        uint256[32] public b;
        uint256[2][3][4] public c;
        uint256[2][3][] public d;
        uint256[2][][4] public e;
        uint256[2][3][4][5][6][7][8] public f;
    }
    uint256[3][] arrayForSize4;
    uint256[3][5] arrayForSize35;
    TestStruct[] arrayForSize111b;
    TestStruct[] arrayForSize11ab;
    uint256[3][4] arrayForSize44;
    uint256[3][5] arrayForSize355;
    uint256[3][4] arrayForSize445;
    uint256[3][4] arrayForSize4455;
    uint256[3][4] arrayForSize44555;
}
