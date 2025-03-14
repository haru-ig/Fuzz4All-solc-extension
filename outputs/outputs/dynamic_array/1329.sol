pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck5 {
    struct ArrayItem { bool b; }
    ArrayItem[] pubX;
    uint pubIndex;
    ArrayItem[] X;
    uint index;
    uint length;
    uint lengthAfterArrayChange;
    constructor () public
    {
        length = 10;
        X = new ArrayItem[](length);
        for (uint i = 0; i < length; i++) {
            X[i].b = true;
        }
        X[0].b = false;
        pubIndex = 0;
        index = 1;
        index--;
        index++;
        lengthAfterArrayChange = pubIndex;
    }
}
