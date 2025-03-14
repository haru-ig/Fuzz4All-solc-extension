pragma solidity ^0.8.0;
contract ContractTest {
    address public to;
    bytes32 public key1;
    address public key;
    function transferWithBytes32Key(string calldata key2, string calldata key3, uint _z) public {
        key = bytes32(keccak256(abi.encodePacked(_z)) );
        to = msg.sender;
        bytes32 key1 = bytes32(keccak256(abi.encodePacked(key2)) );
        key1 = bytes32(keccak256(abi.encodePacked(key3)) );
    }
    function set(bytes32 _z) public {
        key = bytes32(keccak256(abi.encodePacked(key)) );
        to = msg.sender;
        key1 = bytes32(keccak256(abi.encodePacked(_z)) );
    }
    function get() public view returns (uint) {
        return key;
    }
    function test(uint _z) public {
        key = bytes32(keccak256(abi.encodePacked(_z)) );
        bytes32 hashMapKey = bytes32(keccak256(abi.encodePacked(key1)) );
    }
}
