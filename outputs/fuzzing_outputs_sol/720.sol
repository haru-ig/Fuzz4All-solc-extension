pragma solidity ^0.8.0;
contract StorageReceiver {
    uint storedData;
    function setValue(uint input) public {
        storedData = input;
    }
    function getValue() public pure returns (uint) {
        return storedData;
    }
}
