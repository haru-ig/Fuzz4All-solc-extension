pragma solidity ^0.8.0;
contract ArrayMutations {
    uint256[] public arrayOfIntegers;
    uint256[] public array;
    uint256 currentLength;
    uint256 maxValue;
    bool isMutated;
    uint256 newInteger;
    uint256 newArrayLength;
    function addNewElement() public {
        array.push(currentLength);
        currentLength++;
        array.push(currentLength);
        currentLength++;
        newArrayLength = currentLength;
        array.push(newArrayLength);
        currentLength++;
        for (newInteger = 0; newInteger < 1000; newInteger++) {
            array.push(newInteger);
        }
        currentLength++;
        arrayOfIntegers[currentLength-2] = 0;
        currentLength = newLength;
        require(currentLength == 7);
        isMutated = true;
    }
    function getValueAtIndex(uint index) view onlyIfArrayIsEmpty returns (uint) {
        return array[index];
    }
    function getNumOfArrayElements() view onlyIfArrayIsEmpty returns (uint) {
        return numberOfArrayElements();
    }
    function getMaximumValue() public view returns (uint) {
        return maxValue;
    }
}
