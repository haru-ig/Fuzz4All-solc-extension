pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck4_Mutation_Semantics {
    struct ArrayItem { bool b; }
    ArrayItem[] public array;
    uint public index = 0;
    uint public length;
    uint public lengthAfterArrayChange;
    address addr;
    constructor ()
    {
        addr = msg.sender;
        length++;
        array = new ArrayItem[](length);
        for(uint i = 0; i < length; i++)
        {
            array[i].b = false;
        }
        lengthAfterArrayChange = length;
    }
}
