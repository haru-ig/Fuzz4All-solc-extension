pragma solidity ^0.8.0;
contract ArrayMutationsBis3 {
    uint256[] public arrayOfIntegers;
    uint256[] public array;
    uint256 currentLength;
    bool isMutated;
    uint256 value;
    function addNewElement() public {
        arrayLength++;
        currentLength++;
        value = 1 + currentLength;
        arrayLength++;
        currentLength++;
        isMutated = true;
    }
    string newString;
    uint index;
    modifier onlyIfStringIsEmpty {
        if(currentLength == 0) {
            newString="";
            isMutated = true;
            _;
        } else {
            require(false);
        }
    }
}

pragma solidity ^0.8.0;
