pragma solidity ^0.8.0;
contract SemanticsMissingXulMutantContract {
    constructor () {
    }
    function g() public {
        uint x;
        uint y;
        uint z;
        assembly {
            x := 0
            y := 0
            z := 0
        }
        c();
    }
    function c() public pure {
    }
}
