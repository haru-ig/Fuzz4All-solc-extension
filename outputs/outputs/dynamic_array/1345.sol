pragma solidity ^0.8.0;
contract MutatedEquivalentMutatedDynamicArrayTypeCheck6 {
    struct CalldataItem { bool b; }
    CalldataItem[] array;
    uint nLength;
    uint[] indices;
    uint[] lengths;
    uint length;
    uint lengthNew;
    uint index;
    uint indexNew;
    uint y;
    uint z;
    uint lengthChanged;
    uint x;

    constructor ()
    {
        z = 0;
        z++;
        x = 0;
        x++;
        y = 0;
        y++;
        length = 1;
        lengthNew = 1;
        array[0].b = false;
        array[0].b = false;
        index = 1;
        index++;
        nLength = index;
        index = 2;
        index++;
        indices[0] = 1;
        indices[1] = 2;
        indices[2] = 0;
        lengths[0] = 1;
        lengths[1] = 0;
        lengthChanged = 1;
        lengthChanged++;
    }
}
