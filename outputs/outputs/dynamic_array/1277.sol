pragma solidity ^0.8.0;
contract ModifiedTypeCheck {
    struct ArrayItem {
        uint x;
    }
    uint public arrayLength;
    uint[] public array;
    ArrayItem[] public updateArray;
    constructor ()
    {
        updateArray[arrayLength+1] = ArrayItem(5);
        arrayLength++;
    }
    function updateArray() public {
        updateArray[--arrayLength] = ArrayItem(10);
    }
}
