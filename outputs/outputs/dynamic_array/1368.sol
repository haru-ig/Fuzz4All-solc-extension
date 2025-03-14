pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutatedDynamicArrayTypeCheck8 {
    struct ArrayItem { bool b; }
    ArrayItem[] array;
    uint x;
    uint y;
    uint z;
    uint w;
    uint zNew;
    uint yNew;
    constructor () {
        x = 0;
        y = 0;
        z = 0;
        w = 0;
        zNew = 0;
        yNew = 0;
        array = new ArrayItem[](3);
        array[0].b = true;
        array[1].b = false;
        array[2].b = true;
        length = 3;
    }
}
