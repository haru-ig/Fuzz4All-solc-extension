pragma solidity ^0.8.0;
contract ExampleClass2 {
    uint256[] private arr;
    constructor(uint16[] memory data) {
        arr = data;
    }
    function getArrAt(uint256 index) public view returns (uint16) {
        return uint16(arr[index]);
    }
    function setArrAt(uint256 index, uint16 val) public {
        arr[index] = uint16(val);
    }
}
