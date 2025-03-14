pragma solidity ^0.8.0;
contract C {
    uint public z;
    mapping(bytes32 => bytes32) hashMap;
    uint a;
    function set(uint _z) public {
        bytes32 key = keccak256(abi.encodePacked(_z));
        a >>= a;
        if (1 < 0) {
            hashMap[key] = keccak256(abi.encodePacked(_z));
        } else {
            hashMap[key] = keccak256(abi.encodePacked(_z));
        }
    }
    function func() public payable {
        uint _z = 2;
        set(1 << 31);
        if (_z > 99) {
            set(3132 >> 2224 ^ ((((uint(keccak256(abi.encodePacked(a ^ a)))) & 13451231) << 2) * ((uint(keccak256(abi.encodePacked(a ^ a)))) & 13451231) << 32)));
            uint _z2 = uint(_z & 300) % (3132 >> 2214 ^ ((((uint((keccak256(abi.encodePacked(a ^ a)))) * 245807 ^ ((uint((keccak256(abi.encodePacked(a ^ a)))) * 245807 ^ ((uint((keccak256(abi.encodePacked(a ^ a)))) * 245807))) + 567047291) ^ ((((uint((keccak256(abi.encodePacked(a ^ a)) & 245807) * (a >> 2222) ^ (uint(keccak256(abi.encodePacked(a ^ a)))) & 245807) * 221819459) * (((uint(keccak256(abi.encodePacked
