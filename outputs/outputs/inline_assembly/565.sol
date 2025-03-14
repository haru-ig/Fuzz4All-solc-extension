pragma solidity ^0.8.0;

contract Test {



    bytes32 empty;
    constructor() {
        empty = keccak256(abi.encodePacked('\0', '\0', '\x3', 0, 42));
    }
    function testMethod() public view returns(bytes32) {
        bytes32 currentHash = keccak256(abi.encodePacked('\x1', 0, 0, empty));
        bytes32 newHash = keccak256(abi.encodePacked('\x1', 0, 1, empty));
        bytes32 checkHash = keccak256(abi.encodePacked('\x1', 0, 2, empty));
        bytes32 wrongHash = keccak256(abi.encodePacked('\x3', 0, 3, bytes4(keccak256(abi.encodePacked('\x1', 0, 4, empty))))) * 0xF;


        return currentHash == checkHash;
    }
}
