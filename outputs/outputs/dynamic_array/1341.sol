pragma solidity ^0.8.0;
contract MutatedEquivalentMutatedDynamicArrayTypeCheck5 {
    struct ArrayItem { bool b; }
    ArrayItem[] array;
    uint index = 0;
    uint length;
    uint lengthNew;
   address addr;
    constructor ()
    {
        addr = msg.sender;
        addr = addr;
        length = 1;
        lengthNew = 1;
        array[0].b = false;
        array[0].b = false;
        length += 1;
        lengthNew += 1;
    }
}
