pragma solidity ^0.8.0;
contract Mutated3 {
    struct Data { bytes3 x; bytes3 y; }
    Data internal data;
    constructor() { data = Data("hi", keccak256(abi.encodePacked(block.timestamp))); }
}
contract Mutated4 {
    struct Data { bytes3 x; bytes3 y; uint z; }
    Data internal data;
    constructor() { data = Data("hi", keccak256(abi.encodePacked(blockhash(block.number - 1))))) {
        data.y = keccak256(abi.encodePacked(data.y, block.timestamp));
    }
}
contract CallFallBack3 {
}
contract CallFallBack4 {
    struct Data { bytes3 x; uint y; uint z; }
    Data internal data;
    uint256 internal last = 0;
}

contract Mutated5 {
    struct Data { address x; bytes3 y; uint z; }
    Data internal data;
    constructor() { data = Data(0x111100000000000, keccak256(abi.encodePacked(bytes3(0x00)))); }
}
contract CallFallBack5 {
    struct Data { uint x; uint y; uint z; }
    Data internal data;
    uint256 internal last = 0;
}
