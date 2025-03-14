pragma solidity ^0.8.0;
contract MutatedSemanticsMismatchXulMutantContract {
    constructor () {
    }
    function t() public virtual {
        bytes32 x;
        bytes32 y;
        bytes32 z;
        assembly {
            x := "x"
            y := "y"
            z := "z"
        }
        w();
    }
    function w() public pure {
    }
}
