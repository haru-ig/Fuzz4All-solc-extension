pragma solidity ^0.8.0;
contract ArrayMutationsBis3a is ArrayMutationsBis3 {
    function removeLastElementFromArray() public onlyIfArrayIsNotMutated {
        array.pop();
        currentLength--; isMutated = true;
    }
    function removeLastElementFromEmptyArray() public {
        array.pop();
        currentLength--; isMutated = true;
    }
    function removeElementFromArray(uint256 elementID) public onlyIfArrayIsNotMutated {
        array[elementID] = array[currentLength - 1];
        array[currentLength - 1] = 0;
        currentLength--;
        array.pop();
        isMutated = true;
    }
    function removeElementFromEmptyArray(uint256 elementID) public onlyIfArrayIsEmpty {
        array[elementID] = array[currentLength - 1];
        array[currentLength - 1] = 0;
        currentLength--;
        array.pop();
        isMutated = true;
    }
}
