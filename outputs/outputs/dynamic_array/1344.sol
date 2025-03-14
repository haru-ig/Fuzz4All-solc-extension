pragma solidity ^0.8.0;
contract MutatedEquivalentMutatedDynamicArrayTypeCheck5 {
    uint[] memory array;
    ArrayItem[] array2;
    uint[] memory array_empty;
    uint size;
    uint index;
    uint indexNew;
    uint sizeNew;
    bool valid;
    bool validNew;
    constructor ()
    {
        index = 0;
        size = 1;
        indexNew = 0;
        sizeNew = 1;
        array_empty = new uint[](1);
        array2 = new ArrayItem[](1);
        index += 1;
        size += 1;
        indexNew += 1;
        sizeNew += 1;
    }
}
