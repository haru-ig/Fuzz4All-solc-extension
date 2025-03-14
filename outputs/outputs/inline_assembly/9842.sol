pragma solidity ^0.8.0;
contract SemanticsMissingXulMutantContract {
    constructor () {
    }
    function g() public {
        uint x = 5;
        {
            uint x;
            uint y;
            uint z;
        }
        c();
    }
    function c() public pure {
    }
}
