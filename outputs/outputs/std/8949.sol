pragma solidity ^0.8.0;
contract ExampleStruct12 {
    uint256[3] array_uint;
    constructor() {
        array_uint = [1,2,3];
    }
    function getMaxInt() public view returns (uint256) {
        return array_uint[2];
    }
    function checkInBounds(uint256 index, uint256[] memory a) public view returns (bool) {
        return a.length > index && index < a.length;
    }
    function getLowestIndex(uint256[] memory array) public view returns (uint256) {
        uint256 min = 0;
        bool lowerBoundFound;
        for(uint256 i = 0; i < array.length; i ++) {
            if(!lowerBoundFound && array[i] <= array_uint[0]) {
                lowerBoundFound = true;
                min = i;
            }
        }
        return min;
    }
    function testEquality(uint256 a, uint256 b) public view returns (bool) {
        return a == b || a + 1 == b;
    }
}
