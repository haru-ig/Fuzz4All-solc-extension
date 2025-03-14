pragma solidity ^0.8.0;
contract SemanticsEquivalence6 {

    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    constructor() { data = Data(5, 13, 7); }
    function run() public {
        require(true);
    }
}
contract SemanticEquivalenceFailure7 {

    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    constructor() { data = Data(5, 13, 7); }
}
contract SemanticEquivalenceFailure8 {

    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    constructor() { data = Data(5, 13, 7); }
}
