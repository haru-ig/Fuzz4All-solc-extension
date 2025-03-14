pragma solidity ^0.8.0;
contract ArrayMutationsBis2e2 {
    uint256[] public arrayOfIntegers;
    uint256[] public array;
    uint256 currentLength;
    bool isMutated;
    uint256 value;
    function addNewElement() public onlyIfArrayIsEmpty {
        currentLength = 0;
        value = 0;
        array.push(value);
        isMutated = true;
    }
}
/***
