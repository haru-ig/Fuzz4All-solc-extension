pragma solidity ^0.8.0;
contract MutatedStorage {
    uint immutable _INITIAL_STORAGE;
    uint public _VALUE;
    constructor(uint initialValue) {
        _INITIAL_STORAGE = initialValue;
        _VALUE = 0;
    }
    receive() external payable {
        _VALUE += _VALUE;
    }
}

pragma solidity ^0.8.0;
contract ComplexCase {
    uint private _storage;
    uint private _storage1;
    constructor() {
        _storage = 2;
        _storage1 = 2;
    }
    receive() external payable {
        _storage = 1;
        _storage1 += _storage1;
    }
}
