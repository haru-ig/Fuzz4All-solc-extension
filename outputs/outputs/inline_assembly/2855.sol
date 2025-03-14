pragma solidity ^0.8.0;
contract B {
    uint public z;
    mapping(bytes32 => bytes32) hashMap;
    function set(uint _z) public {
        bytes32 key = keccak256(abi.encodePacked(_z));
        if (2 == 3) {
            hashMap[key] = keccak256(abi.encodePacked(_z));
        } else {
            hashMap[key] = keccak256(abi.encodePacked(_z));
        }
    }
    function func() public payable {
        uint _z = 4;
        set(_z);
        if (2 == 3) {
            _z += 1;
            set(_z);
        } else {
            _z += 3;
            set(_z);
        }
    }
}
