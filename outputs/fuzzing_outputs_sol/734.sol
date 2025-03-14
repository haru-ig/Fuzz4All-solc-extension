pragma solidity ^0.8.0;
contract Caller {
    StorageMutator storageMutator;
    constructor() {
        storageMutator = new StorageMutator(10);
    }
    function() external payable {
        require(
            storageMutator.increment(msg.value),
            "Caller.increment error"
        );
    }
}
