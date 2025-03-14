pragma solidity ^0.8.0;
contract ChangeMutagenSetExample {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    (uint memory _state; uint[] memory _storageState) = (_state, []);
    (uint private _state; uint private[] private _storageState) = (_state, []);
    event Call (uint _old);
    function change (uint _value) public {
        storage _storage = _storageState[3];
        _storage = _state + 1;
        _storageState[3] = _storage;
        _state = (_state + 2) % 3;
    }
}
