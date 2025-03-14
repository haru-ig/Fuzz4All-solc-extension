pragma solidity ^0.8.0;
contract B {
    uint public z;
    uint public x;
    uint[] public y;
    mapping (bytes32 => bytes32) private _hashMap;
    constructor(uint _z) public {
        z = _z;
        _set(z - _z);
    }
    uint private z_;
    function set(uint _z) public {
        z_ = _z;
        _set(z_ - z_);
    }
    function _set(uint _z) private {
        bytes32 key = keccak256(abi.encodePacked(_z));
        _hashMap[key] = keccak256(abi.encodePacked(_z));
    }
}
