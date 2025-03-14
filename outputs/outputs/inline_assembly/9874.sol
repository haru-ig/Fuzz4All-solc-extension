pragma solidity ^0.8.0;
contract SemanticsMismatchXulMutantContract2 {
    function g() private pure {
    }
    function c() public pure {
    }
}

pragma solidity ^0.8.0;
contract SemanticallyMatchingMutantContract {
    constructor () {
    }
    function g() public {
        bytes32 x;
        bytes32 y;
        bytes32 z;
        assembly {
            y := x
            x := y
        }
        c();
    }
    function c() public pure {
    }
}
