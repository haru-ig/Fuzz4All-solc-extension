pragma solidity ^0.8.0;
contract MutatedExampleStruct8 {
    uint[5] array = [1,2,3,4,5];
    uint i;
    uint min = 0;
    uint lowest = 0;
    uint highest = 0;
    uint minMax;
    uint lowestValue;
    bool found;
    uint256 x;
    uint256 y;
    uint256 sum;
    constructor() {}
    function getMinInt() public view returns (uint) {
        return array[0];
    }
    function getLowestUInt() public view returns (uint) {
        return uint(array[0]);
    }
    function getHighestUInt() public view returns (uint) {
        return uint(array[1]);
    }
    function setUint(uint idx, uint val) public {
        array[idx] = val;
        x = val;
    }
    function setUint256(uint idx, uint256 val) public {
        array[idx] = val;
        y = val;
    }
    function setUint8(uint idx, uint8 val) public {
        array[idx] = val;
        sum += 1;
    }
    function setUint16(uint idx, uint16 val) public {
        array[idx] = val;
    }
    function setUint32(uint idx, uint32 val) public {
        array[idx] = val;
        sum += 1;
    }
    function setUint64(uint idx, uint64 val) public {
        array[idx] = val;
        sum += 1;
    }
}
