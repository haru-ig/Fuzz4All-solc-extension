pragma solidity ^0.8.0;
contract B {
    uint public z;
    mapping(bytes32 => bytes32) hashMap;
    bytes32 public keccakValue;

    function set(uint _z) public {
        keccakValue = keccak256(abi.encodePacked(_z));
        bytes32 hash = hashMap[keccakValue];
        set(hash);
    }
    function set(bytes32 hash) public {
        hashMap[hash] = hash;
        bytes32 _z = 3;
        set(_z);
        _z += 0;
        set(_z);
    }
}
