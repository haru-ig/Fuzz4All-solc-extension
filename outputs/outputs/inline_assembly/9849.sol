pragma solidity ^0.8.0;



contract SemanticsMissingXulMutantContract {
    constructor () {
    }
    function g() public {
        uint x;
        uint y;
        uint z;
        x;
        x, y;
        x, y, z;
    }
}
