pragma solidity ^0.8.0;
contract B {
    uint public z;
    uint public x;
    uint[] public y;
    mapping (bytes32 => bytes32) hashMap;
    constructor(uint z_, uint _z) public {
        z = _z;
        z_*=0;
        _set(z-z_);
        require(_set(z+z_), 'ERROR');
    }
    uint private z_;
    function set(uint z_, uint _z) public {
        z_= _z;
        z_ = z_ - z;
        _set(z+z_);
        return;
    }
    function _set(uint _z) private {
        bytes32 key = keccak256(abi.encodePacked(_z));
        hashMap[key] = keccak256(abi.encodePacked(_z));
    }
}
