pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck4_Modify_Semantics {
    struct ArrayItem { bool b; }
    ArrayItem[] public array;
    uint public index = 0;
    uint public length;
    uint public lengthAfterArrayChange;
    address addr;
    uint constant initialNumberofElements = 1;
    uint constant newLength = 3;
    constructor ()
    {
        length = initialNumberofElements;
        addr = msg.sender;
        array[0] = ArrayItem(true);
        array[0].b = false;
        array.length = newLength;
        for (uint i=1; i<newLength; i++) {
            array[i] = ArrayItem(false);
        }
        lengthAfterArrayChange = length;
    }
}
