pragma solidity ^0.8.0;

contract StorageLayoutBug {

    mapping (address => uint) private storage;

    mapping (address => mapping (uint => uint)) mapping (uint => uint) public storageLayoutBug;
    constructor () public {
        storage[1] = uint(0x10);
        mapping (uint => bool) storageBug;
        storage[1] = uint(0x20);
    }

    function storageMutation() public {
        storage[1] = uint(0x30);

        mapping (uint => bool) storageBug;

        mapping (uint => uint) storageLayoutBugMod;
        storageLayoutBug[1][uint(0x10)] = uint(0x20);
        storageLayoutBug[1][uint(0x20)] = uint(0x30);
    }
}
