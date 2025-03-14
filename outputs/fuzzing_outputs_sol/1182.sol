pragma solidity ^0.8.0;
contract SemanticsEquivalence1 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    constructor() { data = Data(5, 13, 7); }
    function run() public { }
}

contract SemanticsEquivalence {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    constructor() { data = Data(5, 13, 7); }
    function run() public { }
}
