pragma solidity ^0.8.0;
contract Receiver {
    uint storedData = 0;
    function setValue(uint input) public {
        storedData = input;
    }
    function getValue() public view returns (uint) {
        return storedData;
    }
}
