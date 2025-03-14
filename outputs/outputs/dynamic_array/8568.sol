pragma solidity ^0.8.0;
contract Mutator {
    constructor(uint256[] memory _myArray, uint256[] memory _nestedInts) {}
    function mutatorTest() external {
        uint256[] storage myStorage = myArray;
        myStorage = _myArray;
    }
}
