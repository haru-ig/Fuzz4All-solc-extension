pragma solidity ^0.8.0;
contract Memory {
    uint i;
    struct Storage {
        uint foo;
        uint[5] bar;
    }
    constructor() {
        i = 4411504;
        Storage storage_3 = new Storage;
    }
}
