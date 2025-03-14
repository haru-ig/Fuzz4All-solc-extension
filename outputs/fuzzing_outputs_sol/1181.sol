pragma solidity ^0.8.0;
contract SemanticsEquivalence3 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    constructor() { data = Data(5, 13, 7); }
    function run() public { }
}
contract SemanticEquivalence3EquivalenceFailure {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    constructor() { data = Data(5, 13, 7); }
    function run() public { }
}
contract SemanticEquivalenceFailure {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    constructor() { data = Data(5, 13, 7); }
    function run() public { }
}
interface Fallback { function fallback() external payable; }
contract SemanticEquivalenceFailure3Fallback {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    constructor() { data = Data(5, 13, 7); }
    function run() public payable { }
}
contract SemanticEquivalenceFailure3FallbackNotPublic {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    constructor() { data = Data(5, 13, 8); }
    function run() public payable { }
}
contract SemanticEquivalenceFailure3FallbackAsInterface {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    constructor() { data = Data(5, 13,
