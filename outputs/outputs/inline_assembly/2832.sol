pragma solidity ^0.8.0;
contract B {
    uint public z = 0;
    uint x;
    uint[] public y;
    mapping (bytes32 => bytes32) public _hashMap;
    constructor(uint _z) public {
        z = _z;
        x = z_ + _z;
        _set(z, x);
    }
    uint private z_;
    function set(uint _z, uint _x) public {
        z_ = _z;
        x = _x;
        _set(z_, x);
    }
    function _set(uint _z, uint _x) private {
        bytes32 key = keccak256(abi.encodePacked(_z, _x));
        _hashMap[key] = keccak256(abi.encodePacked(_z, _x));
    }
}
