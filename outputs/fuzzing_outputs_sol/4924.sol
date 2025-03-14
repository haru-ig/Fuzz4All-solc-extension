pragma solidity ^0.8.0;
contract OriginalTest {
    function getAddress() public pure returns (address myAddress) {
        return address(0x11111111111111111);
    }
}
contract MutatedTest {
    struct Storage {
        address myAddress;
    }

    constructor(Storage memory old_storage) {
        old_storage.myAddress = address(0x11111111111111111);
    }

    function getAddress() public pure returns (address myAddress) {
        myAddress = old_storage.myAddress;
        return myAddress;
    }

    modifier modifyAddress() {
        old_storage.myAddress = address(0x22222222222222222);
        _;
    }

    Storage old_storage;
}
