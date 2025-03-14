pragma solidity ^0.8.0;
contract ArrayMutationsD {
    uint256[] public array;
    bool isMutated;
    bool arrayHasChanged;
    uint256[] arrayThatHasChanged;
    function addNewElement() public {
        if(currentLength == 0) {
            array.push(currentLength);
            currentLength++;
            array.push(currentLength);
            currentLength++;
            isMutated = true;
        }
        arrayHasChanged = true;
        arrayThatHasChanged.push(array[currentLength-1]);
    }
}
