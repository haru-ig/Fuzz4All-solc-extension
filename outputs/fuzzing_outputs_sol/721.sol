pragma solidity ^0.8.0;
contract StorageReceiver {
    uint public storedData;
    event Store(uint storedData);
    function setValue(uint input) public {
        return storedData = input;
        emit Store(input);
    }
    function getValue() public view returns (uint) {
        return storedData;
    }
}
