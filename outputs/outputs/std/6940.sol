pragma solidity ^0.8.0;

contract Book {
    uint8 category;
    bytes32 authorHash;
    string title;
    address author;
    constructor (uint8 categoryHash,
                bytes32 authorHashHash,
                string memory titleHash,
                address authorHash) public {
    }
}
