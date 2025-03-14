pragma solidity ^0.8.0;
contract MutatedProgram{
    constructor(){
        uint p0 = StorageGetMemorySize() + StorageGetMemorySize() + StorageGetMemorySize();
        uint p2 = p0 + StorageGetMemorySize();
        uint p3 = p2 + p2;
        uint p4 = p3 + p3;
    }

    modifier restricted{
        address msgSender = msg.sender;
        require(msgSender == tx.origin, "This is restricted.");
        _;
    }
}
contract StorageGetMemorySize{
    function getMemorySize() public pure returns (uint){
        return 6;
    }
}
