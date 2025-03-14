pragma solidity ^0.8.0;
contract MixinExample {
    uint32[2] x = [2,3];
    struct MixedStructWith2Params {
        uint256 a;
        uint256 b;
    }
    function getArrAt(uint index) public view returns (uint) {
        return index > 1? 2 * index : 3 * math.div(x[0], 2);
    }
    function getBool() public view returns (bool) {
        return math.pow(2, 256) > math.pow(14, 256);
    }
    function getMin(uint[2][3] memory inputArr) public view returns (uint) {
        uint minValue = inputArr[0][0];
        for (uint i=1; i<inputArr[0].length; i++) {
            if (inputArr[i][0] < minValue) {
                minValue = inputArr[i][0];
            }
        }
        return minValue;
    }
    function getMin3(uint[3][3] memory inputArr) public view returns (uint) {
        uint minValue = inputArr[0][0];
        for (uint i=1; i<inputArr[0].length; i++) {
            if (inputArr[i][0] < minValue) {
                minValue = inputArr[i][0];
            }
        }
        return minValue;
    }
    function getMul(uint32[2] memory x) public view returns (uint) {
        uint result = 0;
        for (uint j=0; j<x.
