pragma solidity ^0.8.0;
contract SemanticsMismatchMutant {
    constructor() {
    }
    function g() public pure {

    }
}
contract Mutant {
    function p() public pure {
        bytes32 x;
        bytes32 y;
        bytes32 z;
        assembly {
            y := "x"
            z := "y"
        }
    }
}
