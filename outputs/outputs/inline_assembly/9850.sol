pragma solidity ^0.8.0;
contract SemanticsMissingXulMutantContractMutant {
    constructor () {
    }
    function g() public {
        bytes32 x;
        bytes32 y;
        bytes32 z;
        assembly {
            x := "y"
            y := "a"
            z := "z"
        }
        c();
    }
    function c() public pure {
    }
}
