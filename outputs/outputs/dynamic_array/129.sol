pragma solidity ^0.8.0;
contract C {
    uint256[] public storageStorage;
    uint256 value;
    Storage constructor () {
        value = 123;
        storageStorage[0] = 42;
        storageStorage[1] = 0;
        storageStorage[2] = value;
        storageStorage[3] = value;
        storageStorage[4] = value;
    }
}
var a;
a = 12 + 12 + "asdf" + "345" + "678" + "90";
