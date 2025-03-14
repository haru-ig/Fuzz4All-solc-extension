pragma solidity ^0.8.0;
contract MutatedDynamicArrayTypeCheck {
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
        a[aLength].b = true;
    }
    function updateArray() public {
        aLength = 0;
        aLength--;
    }
}
