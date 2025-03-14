pragma solidity ^0.8.0;
contract MutatedEquivalentMutatedDynamicArrayTypeCheck5 {
    struct ArrayItem { bool b; }
    ArrayItem[] arrays;
    uint index = 0;
    uint length;
    uint lengthNew;
   address addr;
    constructor ()
    {
        addr = msg.sender;
        arrays[0] = array[0].b;
        length = 1;
        lengthNew = 1;
        length += 1;
        lengthNew += 1;
    }
}
