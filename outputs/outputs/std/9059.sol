pragma solidity ^0.8.0;
contract ExampleClass {
    uint256[] private arr;
    function setArrAt(uint256 index, uint16 val, uint i) public {
        arr[index] = uint2uint16(val) + uint16(i) + uint16(i^4);
    }
}
