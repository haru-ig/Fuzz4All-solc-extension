pragma solidity ^0.8.0;
contract SemanticsMismatchXulMutantContract {
    constructor () {
    }
    function g() public {
        bytes32 x;
        bytes32 y;
        bytes32 z;
        assembly {
            x := "x"
            y := "y"
	z := "z"
        }
        c();
    }
    function c() public pure {
    }
}
