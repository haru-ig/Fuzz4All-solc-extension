pragma solidity ^0.8.0;
contract DynamicArrayTypeCheck {
    struct ArrayItem {
        uint8 a;
    }
    ArrayItem[] public a;
    constructor ()
    {
        a.push(ArrayItem(0));
    }
    function updateArray() public {
        a.push(ArrayItem(10));
    }
}
