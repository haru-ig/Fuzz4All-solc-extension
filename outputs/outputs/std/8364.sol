pragma solidity ^0.8.0;
contract ArrayMutationsBis2 is ArrayMutationsBis1 {
    uint256[] internal array;
    uint256[] internal arrayOfIntegers;
    uint256 currentLength;
    bool isMutated;
    uint256 value;
    function addNewElement() public onlyIfArrayIsEmpty {
        array.push(currentLength);
        currentLength++;
        if(value!= 1) {
            arrayOfIntegers.push(1);
            isMutated = true;
        } else {
            arrayOfIntegers.push(value);
            isMutated = true;
            value++;
        }
    }
    modifier onlyIfArrayIsNotEmpty {
        if(currentLength > 0) {
            _;
        } else {
            require(false);
        }
    }
}
