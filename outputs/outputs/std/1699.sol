pragma solidity ^0.8.0;
contract Multiply {

    uint[2] array;

    uint[2][2] copy;
    function getArray() public view returns (uint[2]) {
        return array;
    }
    function getCopy() public view returns (uint[2][2]) {
        return copy;
    }
    function setArray(uint[2] memory _newArray) public {
        array = _newArray;
    }
    function setCopy(uint[2][2] memory _duplicateArray) public {
        copy = _duplicateArray;
    }
}
