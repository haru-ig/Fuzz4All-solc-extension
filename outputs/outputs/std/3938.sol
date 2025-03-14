pragma solidity ^0.8.0;
contract Memory {
    bytes public storageBuffer;
    constructor () {
        storageBuffer = new bytes(64);
    }
}

pragma solidity ^0.8.0;
