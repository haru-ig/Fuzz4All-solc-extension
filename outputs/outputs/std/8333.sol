pragma solidity ^0.8.0;
contract ArrayMutationsBis {
    uint256[] public arrayOfIntegers;
    uint256[] public array;
    uint256 currentLength;
    bool isMutated;
    function addNewElement() public {
        array.push(currentLength);
        currentLength++;
        array.push(currentLength);
        currentLength++;
        arrayOfIntegers[currentLength-2] = 0;
        isMutated = true;
    }
    modifier onlyIfArrayIsEmpty {
        if(currentLength == 0) {
            _;
        } else {
            require(false);
        }
    }
}
