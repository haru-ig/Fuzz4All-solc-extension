pragma solidity ^0.8.0;
contract ExampleClass {
    uint256[] private arr;
    constructor(uint256[] memory data) {
        arr = data;
    }
    function getArrAt(uint256 index) public view returns (uint16) {
        return uint2uint16(arr[index]);
    }
    function setArrAt(uint256 index, uint16 val) public {
        arr[index] = uint2uint16(val);
    }
    function uint2uint16(uint256 source) public pure returns(uint16) {
        return uint16(source) + uint16(source>>16);
    }
}
