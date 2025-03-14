pragma solidity ^0.8.0;
contract B {
    uint public z;
    mapping(bytes32 => bytes32) hashMap;
    function set(uint _z) public {
        bytes32 key = keccak256(abi.encodePacked(_z));
        hashMap[key] = keccak256(abi.encodePacked(_z));
    }
    function func() public payable {
        uint _z = 3;
        set(_z);
        _z += 0;
        set(_z);
    }
}
