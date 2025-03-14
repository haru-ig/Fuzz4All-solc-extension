pragma solidity ^0.8.0;
contract ContractReceiver is Receiver {
    mapping(address => uint) public userToStorageMap;
    uint storedData;
    function receive() payable public {
        storedData += msg.value;
        userToStorageMap[msg.sender] = storedData;
    }
    function getValue() public view returns (uint) {
        return storedData;
    }
}
contract Caller is Receiver {
    mapping(address => uint) public userToStorageMap;
    uint storedData;

    function fallback() public payable {
        storedData += msg.value;
        userToStorageMap[msg.sender] = storedData;
    }
    function getValue() public view returns (uint) {
        return storedData;
    }
}
