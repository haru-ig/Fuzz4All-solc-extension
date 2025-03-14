pragma solidity ^0.8.0;
contract C {
    uint public z;
    mapping(bytes32 => bytes32) hashMap;
    function set(uint _z) public {
        bytes32 key = keccak256(abi.encodePacked(_z));
        setMap[key] = keccak256(abi.encodePacked(_z));
    }
}
