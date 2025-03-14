pragma solidity ^0.8.0;
contract SemanticsMismatchXulMutantContract {
    constructor () {
    }
    function g() public {
        bytes32 x;
        bytes32 y;
        assembly {
            y := "y"
            x := "x"
        }
        c();
    }
    function c() public pure {
    }
}
