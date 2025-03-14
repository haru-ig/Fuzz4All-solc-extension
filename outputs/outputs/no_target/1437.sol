pragma solidity ^0.8.0;
struct MutatedStruct {
    uint4 _arrayOfBools;
    uint256 b;
    uint64 x;
    uint4 _arrayOfBytes;
    uint32 y;
    uint16 z;
    uint8 W;
    bytes _arrayOfBytes2;
}
contract Semantic0098 {
    function mutant() public pure {
        MutatedStruct memory S = MutatedStruct(1, 2, 3, 4, 5, 6, 7, 8, 0);
        S._arrayOfBools = uint4(true);
        S.b = uint256(1);
        S.x = uint64(9);
        S._arrayOfBytes = uint32(9);
        S.y = uint16(9);
        S.z = uint8(9);
