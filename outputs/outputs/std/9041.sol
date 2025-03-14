pragma solidity ^0.8.0;
contract ExampleClass {
    uint[] public arr;
    constructor(uint[] memory data) {
        arr = data;
    }
    function getArrAt(uint index) public view returns (uint) {
        return uint2uint8(arr[index]);
    }
    function setArrAt(uint index, uint8 val) public {
        arr[index] = uint2uint8(val);
    }
    function uint2uint8(uint source) public pure returns(uint8) {
        return uint8(source) + uint8(source >> 24);
    }
}
