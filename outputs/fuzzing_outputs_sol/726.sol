pragma solidity ^0.8.0;
contract MutatedStorageReceiver {
    uint storedData;
    function setValue(uint input) public {
        storedData = input;
    }
    receive() external payable {
        storedData += msg.value;
    }
    function getValue() public view returns (uint) {
        return storedData;
    }
}
