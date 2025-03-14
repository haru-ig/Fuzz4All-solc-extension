pragma solidity ^0.8.0;
contract Mutator {
    constructor(int256[] memory _myArray, int256[] memory _nestedInts) {
        uint256 numInts = uint(uint256(_nestedInts.length));
        for (uint256 i = 0; i < numInts; i++) {
            int256[] memory nestedArray;
            nestedArray = nestedArray;
        }
    }
    function mutatorTest() external {}
}
