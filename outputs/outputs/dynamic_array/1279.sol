pragma solidity ^0.8.0;
contract MutatedDynamicArrayTypeCheck {
    struct ArrayItem {
        bool b;
    }
    ArrayItem[] public a;
    uint public aLength;
    constructor ()
    {
        a[aLength] = ArrayItem(false);
        aLength++;
    }
    function updateArray() public {
        aLength--;
        a[aLength].b = true;
    }
}
