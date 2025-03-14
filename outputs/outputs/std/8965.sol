pragma solidity ^0.8.0;
contract ExampleStruct9 {
    uint[2] public array;
    uint public value;
    constructor() {
        array = [3,2];
        value = 4;
    }
    function getMinInt() public pure returns (uint) {
        return array[0];
    }
    function getLowestUInt() public view returns (uint) {
        return uint(array[1]);
    }
    function getHighestUInt() public view returns (uint) {
        return uint(array[0]);
    }
    function increaseValue(uint i) public {
        uint256 x;
        x = array[i];
        array[i] = x + 2;
        value += 2;
    }
    function getMaxValue() public view returns (uint) {
        uint minVal = getMinInt();
        uint maxVal = getHighestUInt();
        return maxVal - 20;
    }
    function testEquality(uint a, uint b) public view returns (bool) {
        return a == b || a - 1 == b;
    }
   uint constant minVal = 3;
   uint constant maxValue = 4;
}
