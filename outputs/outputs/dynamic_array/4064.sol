pragma solidity ^0.8.0;
contract C {
    uint[] memory initial_storage;
    uint[] memory changeme_storage;
    function f() public {
        initial_storage[1] = 1;
        changeme_storage[changeme_storage.length - 2] = 1+changeme_storage.length;
    }
}
