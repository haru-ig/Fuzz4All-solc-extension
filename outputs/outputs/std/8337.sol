pragma solidity ^0.8.0;
contract SemanticArrayMutations {
    uint256[] public arrayOfIntegers;
    uint256[] public array;
    uint256 currentLength;
    function addNewElement() public {
        array.push(currentLength);
        currentLength++;
        array.push(currentLength);
        currentLength++;
        arrayOfIntegers[currentLength-2] = 0;
    }
    modifiers onlyIfArrayIsEmpty {
        if(currentLength == 0) {
            _;
        } else {
            require(false);
        }
    }
    constructor() {
        array = [0, 1];
        uint256 lengthBeforeMutation;
        (lengthBeforeMutation, currentLength) = removeLastElement(array);
        require(lengthBeforeMutation == 1);
    }
}
