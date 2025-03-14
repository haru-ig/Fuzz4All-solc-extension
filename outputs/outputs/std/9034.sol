pragma solidity ^0.8.0;
contract ExampleClass {
    uint[] arr;
    constructor() {
        arr.push(8);
    }
    function getArrAt(uint index) public view returns (uint) {
        return uint2uint8(arr[+arr.length - index - 1]);
    }
    function uint2uint8(uint source) public pure returns(uint8) {
        return uint8(source) + uint8(source>>24);
    }
}
