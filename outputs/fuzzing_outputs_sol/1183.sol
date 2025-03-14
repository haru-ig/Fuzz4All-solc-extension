pragma solidity ^0.8.0;
contract SemanticsEquivalence2 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data = Data(5, 13, 7);
    constructor() { }
    function run() public { }
}
contract SemanticCheckFailure {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data = Data(5, 13, 7);
    constructor() { }
    function run() public { }
}
contract SemanticCheckFailure2 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data = Data(5, 13, 7);
    constructor() { }
    function run() public { }
}
contract SemanticEquivalenceFailure {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data = Data(5, 13, 7);
    constructor() { }
    function run() public { }
}
contract SemanticEquivalenceFailure2 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data = Data(5, 13, 7);
    constructor() { }
    function run() public { }
}
contract SemanticEquivalenceFailure3 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data = Data(5, 13, 7);
    constructor() { }
    function run() public { }
}
