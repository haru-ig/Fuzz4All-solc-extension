pragma solidity ^0.8.0;
contract ExampleClass {
    uint[] arr;
    constructor(uint[] memory data) {
        arr = data;
    }
    function getArrAt(uint index) public view returns (uint) {
        return uint2uint8(arr[index]);
    }
    function uint2uint8(uint source) public pure returns(uint8) {
        return (uint8(source) + uint8(source>>24));
    }
}
