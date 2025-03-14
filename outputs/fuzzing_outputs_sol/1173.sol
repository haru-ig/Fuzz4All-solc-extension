pragma solidity ^0.8.0;
contract SemanticEquivalence {
    struct Data { uint x; uint y; }
    Data internal data;
    constructor() { data = Data(7, 9); }
    function run() public { }
}
contract SemanticEquivalence2 {
    struct Data { bytes3 x1; uint x2; uint x3; }
    Data internal data;
    constructor() {
        data = Data(
            bytes3(keccak256("hi1")),
            5,
            13);
    }
    function run() public { }
}
