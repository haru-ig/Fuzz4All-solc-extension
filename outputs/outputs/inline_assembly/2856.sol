pragma solidity ^0.8.0;
contract B2 {
    uint public z = 3;
    mapping(bytes32 => bytes32) hashMap;
    function set(uint _z) public {
        z += _z;
    }
    function func() public payable {
        bytes32 key = keccak256(abi.encodePacked(z));
        if (1 < 1) {
            hashMap[key] = keccak256(abi.encodePacked(z));
        } else {
            hashMap[key] = keccak256(abi.encodePacked(z));
        }
        set(z);
    }
}
