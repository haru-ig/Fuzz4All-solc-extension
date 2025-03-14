pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck3 {
    struct ArrayItem { bool b; }
    ArrayItem[] public a;
    uint public aLength;
    uint public i;
    address addr;
    constructor ()
    {
        addr = msg.sender;
        aLength = 1;
        ArrayItem memory a0;
        a0.b = false;
        a.push(a0);
        a[aLength].b = true;
        i = 1;
        i = aLength = i + 1;
    }
    function updateArray() public {
        aLength = 0;
        aLength = -aLength;
        aLength = a[i].b;
        aLength--;
        aLength = i;
    }
}
