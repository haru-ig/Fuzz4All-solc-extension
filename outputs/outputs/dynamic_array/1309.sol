pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck3 {
    struct ArrayItem { bool b; }
    ArrayItem[] public a;
    uint public aLength = 10;
    uint public i;
    address addr;
    constructor ()
    {
        addr = msg.sender;
        a[aLength] = a[aLength].a;
        a[aLength].b = true;
        i = 1;
        i = aLength + 1;
    }
    function updateArray() public {
        ArrayItem memory a0;
        a0.b = true;
        aLength = 1;
        a[aLength] = a0;
        aLength--;
        aLength = i;
    }
}
