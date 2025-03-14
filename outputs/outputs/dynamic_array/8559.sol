pragma solidity ^0.8.0;
function mutateMe(StructWithNestedArrays memory s, uint newArrLength) {
    s.array1.length = newArrLength;
    uint[] memory arr;
    for (uint i = 0; i < s.array1.length; i++) {
        s.array1[i] = i * 2;
    }
}
