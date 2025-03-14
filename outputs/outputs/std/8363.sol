pragma solidity ^0.8.0;
contract ArrayMutationsBis2 is ArrayMutationsBis1 {
    function addNewElement_original() public {
        array.push(currentLength);
        currentLength++;
        isMutated = true;
    }
    function addNewValue_original() public {
        array.push(currentLength);
        currentLength++;
        isMutated = true;
    }
    function resetAllValues_original() public {
        currentLength = 0;
        isMutated = false;
        array.resetArray();
        arrayOfIntegers.resetArray();
        value = 0;
    }
}
