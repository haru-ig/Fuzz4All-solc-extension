pragma solidity ^0.8.0;
contract ArrayMutationsBis1 {
    uint256[2] public arrayOfIntegers;
    uint256[2] public array;
    uint256 currentLength;
    uint256 newElement;
    function addNewElement() public {
        array.push(currentLength);
        currentLength++;
        newElement = currentLength.add(1);
        array.push(newElement);
        currentLength++;
    }
    modifier onlyIfArrayIsEmpty {
        if(currentLength == 0) {
            _;
        } else {
            require(false);
        }
    }
}
