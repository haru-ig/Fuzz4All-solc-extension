pragma solidity ^0.8.0;
contract ExampleClass {
    uint256 private arr;
    constructor(uint256 array) { arr = array[0]; }
    function getArrAt(uint256 index) public view returns (uint256) { return index > 0? arr * uint2uint16(index) : 0; }
    function setArrAt(uint256 index, uint16 val) public { arr *= uint2uint16(val); }
}
