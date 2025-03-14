pragma solidity ^0.8.0;
contract ArrayMutationsBis {
    uint256[] public array;
    uint256 currentLength;
    uint256 value;
    function addNewElement() public {
        array.push(currentLength);
        currentLength++;
        value = 1 + currentLength;
        array.push(value);
        currentLength++;
    }
    modifier onlyIfArrayIsNotEmpty {
        if(currentLength <= 0) {
            _;
        } else {
            require(false);
        }
    }
}
