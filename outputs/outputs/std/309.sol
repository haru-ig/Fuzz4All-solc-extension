pragma solidity ^0.8.0;



interface SomeInterface {
    function returnNothing() external returns (uint);
}

interface SignedInteger {
    function signedInt(uint d) external returns (int);
    function signInt(uint d) external returns (uint8);
}

interface CharacterStorage {
    function bytesToChar(bytes memory b) public view returns (bytes1);
}

interface ByteStorage {
    function bytesToByte(bytes memory b) public view returns (byte);
}

interface List {
    function length() external view returns (uint256);
    function length(uint index) external view returns (uint8);
    function at(uint index) external view returns (bytes32 key, bytes32 value);
}
