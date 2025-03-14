pragma solidity ^0.8.0;
contract ExampleClass {
    uint[] arr;
    constructor(uint[] memory data) {
        arr = data;
    }
    function getArrAt(uint index) public view returns (uint) {
        return uint8uint2(arr[index]);
    }
    function uint8uint2(uint8 source) public pure returns(uint) {
        return uint2uint8(source) - uint2uint8(source>>8);
    }
}
