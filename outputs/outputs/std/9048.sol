pragma solidity ^0.8.0;
contract ExampleClass {
    uint255[] arr;
    constructor(uint255[] memory data) {
        arr = data;
    }
    function getArrAt(uint255 index) public view returns (uint255) {
        return uint2uint16(uint2uint16(arr[index]));
    }
    function setArrAt(uint255 index, uint16 val) public {
        arr[index] = uint2uint16(uint2uint16(val));
    }
    function uint2uint16(uint255 source) public pure returns(uint16) {
        return uint16(source & (source>>16)) + (uint16((source>>16))>0? 1 : 0);
    }
}
