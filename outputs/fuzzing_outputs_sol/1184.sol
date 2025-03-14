pragma solidity ^0.8.0;
contract SemanticsEquivalence4 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    constructor() { data = Data(5, 13, 7); }
    function run() public { }
}
contract SemanticEquivalenceFailure4 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    constructor() { data = Data(5, 13, 7); }
    function run() public { }
}
contract SemanticEquivalenceFailure5 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    constructor() { data = Data(5, 13, 7); }
    function run() public { }
}
