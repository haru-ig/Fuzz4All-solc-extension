pragma solidity ^0.8.0;
contract SemanticsMismatchXulMutantContract2 {
    function g() private pure {
        c();
    }
    function c() public pure {
    }
}
contract SemanticallyMatchingMutantContract {
    bool fFalse;
    constructor () {
    }
    function g() public {
        bytes32 y;
        bytes32 x;
        bytes32 z;
        assembly {
            y := x
        }
        c();
    }
    function c() public pure {
    }
}
