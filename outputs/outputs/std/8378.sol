pragma solidity ^0.8.0;
contract ArrayMutationsBis3 {
    uint256[] public array;
    uint256[] public arrayOfIntegers;
    uint256 currentLength;
    bool isMutated;
    uint256 value;
    function addNewElement() public onlyIfArrayIsEmpty {
        array[currentLength] = currentLength;
        currentLength++;
        value = 1 + currentLength;
        array[currentLength] = value;
        currentLength++;
        isMutated = true;
    }
    modifier onlyIfArrayIsEmpty {
        if(currentLength == 0) {
            _;
        } else {
            require(false);
        }
    }
    function addElementToEmptyArray() public {
        array[currentLength] = currentLength;
        currentLength++;
        value = 1 + currentLength;
        array[currentLength] = value;
        currentLength++;
        isMutated = true;
    }
    function mutateInteger(uint256 integerID) public {
        uint256 integer = arrayOfIntegers[integerID];
        uint256 oldInteger;
        uint index;
        for(index = 0; index < 30 ; index++) {
            oldInteger = arrayOfIntegers[integerID - index];
            arrayOfIntegers[integerID - index] = integer;
            arrayOfIntegers[integerID - index + currentLength] = oldInteger;
        }
        integer = 1 - integer;
    }
    function mutateAllIntegers() public {
        uint index;
        for(index = 0; index < currentLength; index++) {
            arrayOfIntegers[index] = currentLength + arrayOfIntegers[index];
        }
    }
}
/* Please create a semantically equivalent
