pragma solidity ^0.8.0;
contract MutatedGeneration6 {
    uint64[17] x;
    function g(uint64 z) public {
        for (uint256 i = 0;i < 17;i ++) {
            x[i] = i;
        }
        x[z] = 1;
        x[16] = 1;
    }
}
contract MutatedGeneration7 {
    uint64[1] x;
    function g(uint64 y) public {
        for (uint64 i = 0;i < 7;i ++) x[i] = i;
        x[y] = 1;
        for (uint64 i = 0;i < 13;i ++) x[i] = 9;
        x[y] = 1;
    }
}

pragma solidity ^0.8.0;
contract MutatedGeneration8 {
    function g(uint8 y) public pure {
        if (y == 0) return;
        for (uint8 i = 0; i < 10000; i ++) {
            uint8 z = uint8(uint(keccak256(abi.encode(uint8(keccak256(abi.encodePacked("x"))))),uint(keccak256(abi.encode(uint8(keccak256(abi.encodePacked("1"))))),uint(keccak256(abi.encode(uint8(keccak256(abi.encodePacked("1"))))),uint8(keccak256(abi.encode(uint8(keccak256(abi.encodePacked("89"))))),uint(keccak256(abi.encode(uint8(keccak256(abi.encodePacked("1"))))),uint(keccak256(abi.encode(uint8(keccak256(abi.encodePacked("1"))))),uint8(keccak256(abi.encode(uint8(keccak256(abi.encodePacked("89"))))),uint(keccak25
