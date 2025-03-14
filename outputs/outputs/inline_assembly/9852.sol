pragma solidity ^0.8.0;
contract MutationsMissingXulMutantContract {
    constructor () {
    }
    function g() public {
        bytes32 x;
        bytes32 y;
        bytes32 z;
        assembly {
            x := 1
            y := 2
            z := 3
        }
        c();
        bytes32 aa;
        assembly {
            aa := x
            x := 4
        label: revert(0);
        }
    }
    function c() public pure {
    }
}
