pragma solidity ^0.8.0;
contract Array {
    uint256[] array1;
    uint256[] array2;
    function setArray(uint256 i, uint256 value) public {
        array1[i] = value;
    }
    function setArray2(uint256 i, uint256 value) public {
        array2[i] = value;
    }
    function getArray(uint256 i) public view returns (uint256) {
        return array1[i];
    }
    function getArray2(uint256 i) public view returns (uint256) {
        return array2[i];
    }
}
