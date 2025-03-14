pragma solidity ^0.8.0;
contract ArrayMutationsD is ArrayMutations {
    uint256[] public array;
    uint256 currentLength;
    function addNewElement() public onlyIfArrayIsEmpty {
        array.push(currentLength);
        currentLength++;
        array[currentLength-1] = 0;
    }
}
contract ArrayMutationsE {
    uint256[] public array;
    uint256 currentLength;
    bool isMutated;
    bool arrayHasChanged;
    function addNewElement() public onlyIfArrayIsEmpty {
        if(currentLength == 0) {
            array.push(currentLength);
            currentLength++;
            array.push(currentLength);
            currentLength++;
            isMutated = true;
        }
        arrayHasChanged = true;
        currentLength++;
        while(currentLength < array.length) {
            array[currentLength-1-1] = 0;
            currentLength++;
        }
    }
}
