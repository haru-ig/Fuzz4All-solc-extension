pragma solidity ^0.8.0;
contract ArrayMutationsBis1 {
    uint256[] public arrayOfIntegers;
    uint256[] public array;
    uint256 currentLength = 0;
    bool isMutated = false;
    uint256 value;
    function addNewElement() public {
        array.push(value);
        currentLength++;
        value = 1 + data;
    }
    function returnData() public returns(uint256) {
        return data;
    }
}
