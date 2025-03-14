pragma solidity ^0.8.0;
contract SemanticsMissingXulMutantContract2 {
    bytes32 x;
    bytes32 y;
    bytes32 z;
    constructor () {
        x := "x"
        y := "y"
        z := "z"
    }
    function g() public {
        c();
    }
    function c() public pure {
    }
}
