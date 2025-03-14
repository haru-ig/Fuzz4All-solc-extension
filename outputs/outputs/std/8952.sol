pragma solidity ^0.8.0;
contract ExampleStruct8 {
    uint[3] array;
    constructor() {
        array = [1,2,3];
    }
    function getMinInt() public view returns (uint) {
        return array[0];
    }
    function getLowestUInt() public view returns (uint) {
        return uint(array[0]);
    }
    function getHighestUInt() public view returns (uint) {
        return uint(array[1]);
    }
    function increaseValue(uint i) public {
        uint256 x;
        x = array[i];
        array[i] = x + 1;
    }
    function testEquality(uint a, uint b) public view returns (bool) {
        return a == b || a + 1 == b;
    }
}
