pragma solidity ^0.8.0;
contract MutatingReturnsArraysWithoutReleasingMemory {
    function add123InConstructor(uint256 x) public {
        _uint8 = uint8(x);
        _uint256[x] = _uint8[0];
    }
    function subtract7InConstructor(uint256 x) public {
        _uint8[0] = uint8(x - 7);
        _uint256[x] = _uint8[0];
    }
    function add123ViaCalldata(uint256 x) public calldata {
        self.add123(x);
    }
    function subtract7ViaCalldata(uint256 x) public calldata {
        self.subtract7(x);
    }
    uint8 private _uint8InConstructor;
    uint8 private _uint8InCalldata;
    mapping(uint256 => uint8) private _uint8;
    mapping(uint256 => uint256) private _uint256;
}
contract MutatingReturnsArraysWithoutReleasingStorage {
    function add123InConstructor(uint256 x) public returns (uint256 z) {
        _uint8 = uint8(x);
        _uint256[x] = _uint8[0];
        return z;
    }
    function subtract7InConstructor(uint256 x) public returns (uint256 z) {
        _uint8[0] = uint8(x - 7);
        _uint256[x] = _uint8[0];
        return z;
    }
    function add123ViaCalldata(uint256 x) public returns (uint256 z) {
        z = self.add123(x);
        return z;
    }
    function subtract7ViaCalldata(uint256 x) public returns (uint256 z) {
        z = self.subtract7(x);
        return z;
    }
    uint8 private _uint8InConstructor
