pragma solidity ^0.8.0;
contract MutatedExampleStruct10 {
    uint[3] before;



    constructor(uint i) {
        before = [10, 11, 10];
    }
    function getMinInt() public view returns (uint) {
        return before[0];
    }
    function getLowestUInt() public view returns (uint) {
        return uint(before[0]);
    }
    function getHighestUInt() public view returns (uint) {
        return uint(before[1]);
    }
    function increaseValue(uint i) public {
        uint256 x;
        x = before[i];
        before[i] = x + 1;
    }
    function testEquality(uint a, uint b) public view returns (bool) {
        return a == b || a + 1 == b;
    }
}

pragma solidity ^0.8.0;
contract MutatedExampleStruct1 {
    uint[3] before;
    constructor(uint i) {




    uint256 x = 10;
        before = [10, 11, 12];
    }
    function getMinInt() public view returns (uint) {
        return before[0];
    }
    function getLowestUInt() public view returns (uint) {
        return uint(before[0]);
    }
    function getHighestUInt() public view returns (uint) {
        return uint(before[1]);
    }
    function increaseValue(uint i) public {
        uint256 x;
        x = before[i];
        before[i] = x + 1;
    }
    function testEquality(uint a, uint b) public view returns (bool) {
        return a == b || a + 1 == b;
    }
}
