pragma solidity ^0.8.0;
contract ArrayMutationsD {
    uint256[] public array;
    uint256 currentLength;
    bool isMutated;
    bool[] isElementMutated;
    uint256[] originalArray;
    uint256[] mutatedArray;
    uint256[] mutatedOriginalArray;
    bool originalArrayHasChanged;
    bool mutatedArrayHasChanged;
    function addNewElement() public {
        originalArray.push(currentLength);
        mutatedOriginalArray.push(currentLength);
        mutatedArray.push(currentLength);
        mutatedArrayHasChanged = true;
        originalArrayHasChanged = true;
        isElementMutated.push(true);
        isMutated = true;
        currentLength++;
    }
    modifier onlyIfArrayIfAlreadyThere {
        if(array.contains(currentLength)) {
            _;
        } else {
            array.push(currentLength);
            mutatedArray.push(currentLength);
            mutatedOriginalArray.push(currentLength);
            mutatedArrayHasChanged = true;
            originalArrayHasChanged = true;
            isElementMutated.push(true);
            isMutated = true;
            currentLength++;
        }
    }
    modifier onlyIfArrayIsEmpty {

        if(currentLength == 0) {
           _;
        } else {
            require(false);
        }
    }
}
