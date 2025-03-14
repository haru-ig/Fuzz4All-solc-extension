pragma solidity ^0.8.0;
contract Test {
    struct Storage {
        uint a;
        uint b;
    }

    function call() public payable {
        Storage storage s = Storage(address(this));
        B b1;
        b1.fallback_();
