pragma solidity ^0.8.0;
contract SemanticEquivalenceX {
    struct Data { uint x; uint y; }
    Data internal data;
    constructor() { data = Data(9, 8); }

    function _11_11() private { data.x *= 3; }
    function _12_12() public { data.y = 13; }
    function run() public { }
}
