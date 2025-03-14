pragma solidity ^0.8.0;
contract Random {
    uint256 public seed;
    constructor() {
        seed = uint256(keccak256(abi.encodePacked(blockhash(0), block.difficulty, block.timestamp)));
    }
    function nextUInt() public pure returns (uint256) {
        seed = uint256(keccak256(abi.encodePacked(seed, block.difficulty, block.timestamp)));
        uint256 rand = seed % 0xffffffffffffffffffffffffffffffffffffffff;
        seed++;
        return rand;
    }
    function nextBytes(uint256 nBytes) public pure returns (bytes memory) {
        return abi.encode(abi.encodePacked(seed % keccak256(bytes(block.difficulty)), seed%block.timestamp, seed, seed));
    }
    function nextAddress(uint256 nAddresses) public pure returns (address) {
        address[] memory addresses = new address[](nAddresses);
        for (uint256 i = 0; i < nAddresses; i++) {
            addresses[i] = nextAddress();
        }
        return addresses[0];
    }
    function nextUInt64() public pure returns (uint256) {
        uint64[] memory rand = new uint64[](3);
        for (uint256 i = 0; i < 3; i++) {
            uint256 rand_i = uint256(keccak256(abi.encodePacked(seed, rand[i])));
            rand[i] = rand_i % 0xffffffffffffffffffffffffffffffffffffffff;
            seed++;
        }
    }
    function nextString(uint nChars, uint64 nAddresses) public pure returns (string memory) {
        bytes memory s = bytes(nextString(nChars));
        return abi.encodePacked(abi.encode(seed), uint256(keccak256(abi.encodePacked(rand(), block.difficulty, block.timestamp, rand)))), s);
    }
    function nextString(uint nChars) public pure returns (string memory) {
        bytes memory chars;
        char[1] memory _char;
        for (uint i = 0; i < nChars; i++) {
            bool end = i >= bytes(nextChar()).length;
            uint64 rand_i = uint64(sha3(abi.encode(bytes(nextChar())))));
            _char[0] = bytes1(uint8(rand_i % maxCode - minCode));
            if (end) chars = string(abi.encodePacked(chars, nextChar()));
            else chars = string(abi.encodePacked(chars, _char));
        }
        return string(abi.encodePacked(chars, uint8(uint64(keccak256(abi.encodePacked(blocksrange(), block.difficulty, block
