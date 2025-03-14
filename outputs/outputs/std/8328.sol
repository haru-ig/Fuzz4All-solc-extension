pragma solidity ^0.8.0;
contract ArrayMutationsD {
    uint256[] public array;
    uint256 currentLength;
    bool isMutated;
    function addNewElement() public {
        if(isMutated == false) {
            array.push(currentLength);
            currentLength++;
            array.push(currentLength);
            currentLength++;
            isMutated = true;
        }
    }
}
contract MutateArray {
    ArrayMutationsA arrayInstance;
    ArrayMutationsB arrayInstance2;
    ArrayMutationsC arrayInstance3;
    ArrayMutationsD arrayInstance4;
}
