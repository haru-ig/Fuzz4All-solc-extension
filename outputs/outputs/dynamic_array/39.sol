pragma solidity ^0.8.0;
contract C {
    uint256[] public bArray;
    uint256[] private bArray2;
    function setBArray(uint256 _value) public {
        bArray = _value;
    }
 }
