pragma solidity ^0.8.0;
contract ArrayMutationsA {
    uint256[] public array;
    uint256 currentLength;
    bool isMutated;
    function addNewElement() public {
        array.push(currentLength);
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
