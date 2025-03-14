pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck4_Copy_Semantics {
    struct ArrayItem { bool b; }
    ArrayItem[] public array;
    uint public index = 0;
    uint public length;
    uint public lengthAfterArrayChange;
    address addr;
    constructor ()
    {
        addr = msg.sender;

        array[0] = ArrayItem(true);
        array[0].b = false;

        length++;
        lengthAfterArrayChange = length;
    }
}
