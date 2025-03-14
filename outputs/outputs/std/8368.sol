pragma solidity ^0.8.0;
contract ArrayMutationsBis4 {
    uint256[] public array;
    uint256[] public arrayOfIntegers;
    uint256 currentLength;
    uint256 value;
    uint256 lastAdd;
    function addNewElement() public onlyIfArrayIsEmpty {
        array.push(currentLength);
        currentLength++;
        value = 1 + currentLength;
        array.push(value);
        currentLength++;
        isMutated = true;
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
        array[elementID] = currentLength + array[elementID];
        array[currentLength - 1 - elementID] = 2 * array[elementID];
    }
    function mutateAllElements() public {
        uint index;
        for(index = 0; index < currentLength; index++) {
            array[index] = currentLength + array[index];
        }
        currentLength++;
    }
}
