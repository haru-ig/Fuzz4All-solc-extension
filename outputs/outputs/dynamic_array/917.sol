pragma solidity ^0.8.0;
contract NewSolidity {
    constructor() public {
        address x = msg.sender;
    }
    struct Storage {
        uint x;
    }
    function StorageArray() public {
        Storage memoryX = Storage(3);
        address y = msg.sender;
        bytes memory data = abi.encodeWithSignature("", x);
    }
}
