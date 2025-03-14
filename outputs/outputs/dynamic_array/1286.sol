pragma solidity ^0.8.0;
contract MutatedDynamicArrayTypeCheck_Storage {
    struct ArrayItem {
        bool b;
    }
    ArrayItem[] public a;
    function() {}
    constructor (address _dummy)
    {
        a[1] = ArrayItem(true);
        a[1].b = false;
    }
    function updateArray() public {
        aLength--;
        a[aLength].b = false;
    }
}
