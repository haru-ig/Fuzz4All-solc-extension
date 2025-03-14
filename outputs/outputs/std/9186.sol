pragma solidity ^0.8.0;
contract NewContract {
    uint256 public immutable array;
    constructor() {
        array = 0x1231241231;
    }
    function setArray(uint256 newArray) public {
        array = newArray;
    }
    function copyArray() public view returns (uint256) {
        return array;
    }
    function printArray() public view returns (uint256) {
        return array;
    }
    function modifyArray() public {
        array = array + 1;
    }
    function compareTo(uint256 _other) public view returns (bool) {
        return array > _other;
    }
}
