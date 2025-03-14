pragma solidity ^0.8.0;
contract MutatedDynamicArrayTypeCheck {
    struct ArrayItem {
        bool b;
    }
    ArrayItem[] public a;
    uint public aLength;
    constructor ()
    {
        a[aLength] = ArrayItem({ b : true });
        aLength++;
    }
    function updateArray() public {
        a[aLength].b = true;
        aLength++;
    }
}
