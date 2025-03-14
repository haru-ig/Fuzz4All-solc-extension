pragma solidity ^0.8.0;
contract NonMutatedDynamicArrayTypeCheck {
    struct ArrayItem {
        bool b;
    }
    ArrayItem[] public a;
    uint public aLength;
    constructor ()
    {
        aLength = 1;
        ArrayItem memory a0;
        a0.b = false;
        a[aLength] = a0;
    }
    function updateArray() public {
        aLength++;
        a[aLength].b = true;
    }
}
