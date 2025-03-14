pragma solidity ^0.8.0;
mapping(address => uint[]) private c;
contract ExampleClass {
    uint[] private arr;
    constructor(uint[] memory data) {
        arr = data;
    }
    function getArrAt(address addr, uint index) public view returns (uint) {
        return uint2uint8(c[addr][index]);
    }
    function setArrAt(address addr, uint index, uint8 val) public {
        c[addr][index] = uint2uint8(val);
    }
    function uint2uint8(uint source) public pure returns(uint8) {
        return uint8(source) + uint8(source>>24);
    }
}
