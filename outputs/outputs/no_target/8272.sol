pragma solidity ^0.8.0;
contract One {
    mapping (address => bool) private boolVarToLock;
    uint private uintVarToLock;
    string private stringVarToLock;
    uint8 private uint8VarToLock;
    address private addressVarToLock;

    uint private unlockUint;
    string private unlockString;
    uint8 private unlockUByte;
    address private unlockAddress;

    bool private boolSetFlag;
}
