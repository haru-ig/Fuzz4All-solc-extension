pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample83 {
    bytes32 private key;

    struct Data{
        uint64 a;
        uint64 b;
        uint64 c;
        uint64 d;
        uint64 e;
    }

    mapping(address => Data) private data;
    uint256 private nonce;

    constructor() {
        key = keccak256(abi.encodePacked("Example", keccak256(abi.encodePacked(address(this).balance)))))
    }

    function update(uint64 _data) public {
        uint256 value = unchecked(uint256(keccak256(abi.encodePacked(address(this).balance), key, nonce++, _data)))%2);
        if (data[msg.sender].a > 0) {
            data[msg.sender].a = 0;
        }
        data[msg.sender].a = data[msg.sender].a | value;
    }

    function verify(uint64 _data) public view returns (bool) {
        uint256 value = unchecked(uint256(keccak256(abi.encodePacked(address(this).balance), key, nonce++, _data)))%2;
        if (data[msg.sender].a == 0) {
            return false;
        }
        data[msg.sender].a = 0;
        return value == 0;
    }
}
