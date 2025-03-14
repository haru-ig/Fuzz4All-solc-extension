pragma solidity ^0.8.0;
contract Solidity {

    event CounterAssigned(address indexed caller);
    struct Counter {
        uint arrayIndex;
        address assignedTo;
    }
    Counter public storageArrays;

    function setAssignedArray(uint x) public {
        storageArrays.arrayIndex = x;
        storageArrays.assignedTo = msg.sender;
        emit CounterAssigned(msg.sender);
    }

    function getAssignedArray() public pure returns (uint8) {
        return storageArrays.arrayIndex;
    }
}
