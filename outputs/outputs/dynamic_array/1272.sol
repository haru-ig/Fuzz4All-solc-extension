pragma solidity ^0.8.0;
contract DynamicArrayTypeCheck {
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
        a[aLength] = ArrayItem(true);
        aLength++;
    }
}
