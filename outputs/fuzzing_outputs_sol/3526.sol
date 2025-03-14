pragma solidity ^0.8.0;
contract MutatedStorage8 {
    uint public num;
    constructor() public {
        num = 0;
    }
    function changeNumber() public {
        num += 1;
    }
    function getStoredNumber() public view returns (uint) {
        return num;
    }
    function addZeroOne() public returns (uint) {
        num += 1;
        num = num + 1;
        return num;
    }
    uint256 constant value = 1;
    function changeValue() public {
        value += 1;
    }
}
