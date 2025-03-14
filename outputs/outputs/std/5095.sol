pragma solidity ^0.8.0;
contract AddressTest {
    struct Storage {}

    constructor(address inital) {
        memoryStorage = Storage({initial});
    }


    Storage public memoryStorage;
}
