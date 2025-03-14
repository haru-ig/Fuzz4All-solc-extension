pragma solidity ^0.8.0;
contract MutatedEquivalentMutatedDynamicArrayTypeCheck5 {
    struct ArrayItem { bool b; }
    ArrayItem[] array;
    uint index = 0;
    uint length;
    uint lengthNew;
    uint y;
    uint z;
    uint nLength;
    constructor ()
    {
        z = 0;
        z++;
        index = 0;
        index++;
        length = 1;
        lengthNew = 1;
        array[0].b = false;
        array[0].b = false;
        index = 1;
        index++;
        nLength = index;
        index = 2;
        index++;
        length++;
    }
}
