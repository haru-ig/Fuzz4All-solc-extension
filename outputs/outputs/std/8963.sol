pragma solidity ^0.8.0;
contract ExampleStruct10 {
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
    function getHighestUInt() public view returns (uint[maxElements]) {
        return [array[1], array[2]];
    }
    function increaseValue(uint i) public {
        array[i] += 2;
    }
    function testEquality(uint a, uint b) public view returns (bool) {
        return a == b || a - 1 == b;
    }
}
