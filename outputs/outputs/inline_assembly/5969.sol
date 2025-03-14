pragma solidity ^0.8.0;


contract InlineAssemblySample {
    int storage int_storage;
    function printStorage() public view {
        int_storage = 8000;
        uint _storage = int_storage;
    }
}
