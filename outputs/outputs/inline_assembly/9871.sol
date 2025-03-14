pragma solidity ^0.8.0;
contract SemanticsMismatchXulMutantContract {
    constructor () {
    }
    function g() public {
        address x;
        address y;
        address z;
        assembly {
            x := "x"
            y := "y"
        }
        c();
    }
    function c() public pure {
    }
}
