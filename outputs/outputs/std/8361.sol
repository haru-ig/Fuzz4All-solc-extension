pragma solidity ^0.8.0;
contract ArrayMutationsBis2 {
    uint256[] public array;
    uint256[] public arrayOfIntegers;
    uint256 currentLength;
    bool isMutated;
    uint256 value;
    function addNewElement() public onlyIfArrayIsEmpty {
        array.push(currentLength);
        currentLength++;
        value = 1 + currentLength;
        array.push(value);
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
        array.push(currentLength);
        currentLength++;
        value = 1 + currentLength;
        array.push(value);
        currentLength++;
        isMutated = true;
    }
    function mutateElement(uint256 elementID) public {
        uint256 element = array[elementID];
        uint256 oldElement;
        uint index;
        for(index = 0; index < 30 ; index++) {
            oldElement = array[elementID - index];
            array[elementID - index] = element;
            array[elementID - index + currentLength] = oldElement;
        }
        element = 1 - element;
    }
    function mutateAllElements() public {
        uint index;
        for(index = 0; index < currentLength; index++) {
            array[index] = currentLength + array[index];
        }
        currentLength++;
    }
}
