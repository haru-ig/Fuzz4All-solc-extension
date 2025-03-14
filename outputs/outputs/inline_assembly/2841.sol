pragma solidity ^0.8.0;
contract B {
    uint public z;
    uint public x;
    uint[] public y;
    mapping (bytes32 => bytes32) hashMap;
    constructor(uint _z, uint _x) public {
        z = _z;
        z_*=0;
        _set(z-z_, _x);
    }
    function z_(uint _z) public {
        z_= _z;
        z_ = z_ - z;
    }
    uint private z_;
    uint private x_;
    function _set(uint _z, uint _x) private {
        bytes32 key  = keccak256(abi.encodePacked(_z, _x));
        hashMap[key] = keccak256(abi.encodePacked(_z, _x));
    }
}
