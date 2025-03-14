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
        array[0] = ArrayItem(false);
        array[0].b = true;
        length++;
        lengthAfterArrayChange = length;
    }
}

pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck4_Modified_Semantics {
    struct ArrayItem { bool b; }
    ArrayItem[] public array;
    uint public index = 0;
    uint public length;
    uint public lengthAfterArrayChange;
    address addr;
    constructor ()
    {
        addr = msg.sender;
        array = new ArrayItem[](1);
        array[0] = ArrayItem(false);
        array[0].b = true;
        length++;
        lengthAfterArrayChange = length;
    }
}
