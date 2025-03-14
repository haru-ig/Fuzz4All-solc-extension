pragma solidity ^0.8.0;
contract SemanticsMismatchXulMutantMutantContract {
    constructor () {
    }
    function g() public {
        bytes32 x;
        bytes32 y;
        bytes32 z;
        assembly {
            x := "x"
            y := "y"
	y := x
            }
        c();
    }
    function c() public pure {
    }
}

contract SemanticsMismatchXulMutantMutantContract_NoXulMutantCode {
    constructor () {
    }
    function g() public {
        bytes32 x;
        bytes32 y;
        bytes32 z;
        assembly {
            x := "x"
            y := "y"
	y := x
            }
        c();
    }
    function c() public pure {
    }
}
