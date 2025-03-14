pragma solidity ^0.8.0;
contract SemanticsUndefinedXulMutantContract {
    constructor () {
    }
    function e() public {
        uint x;
        uint y;
        uint z = 0;
        c(x, y, z);
    }
    function c(uint x, uint y, uint z) public pure {
        if (x == y)
            return;
    }
}
contract SemanticsUndefinedXulMutantContractWithTwoArguments {

    constructor () {
    }

    function f() public {
        uint x = 1;
        uint y = 1;
        uint z = 0;
        c(x, y, z);
    }

    function c(uint x, uint y, uint z) public pure {
        if (x == y)
            return;
    }
}
library SemanticsUndefinedXulMutantContractXul {

    function g() public pure {
        uint x = 1;
        uint y = 1;
        uint z = 0;
        c(x, y, z);
    }

    function c(uint x, uint y, uint z) public pure {
        if (x == y)
            return;
    }
}
contract SemanticsDifferentXulMutantContract {
    constructor () {
    }
    function f() public {
        uint x;
        uint y = x;
        uint z = 0;
        c(x, y, z);
    }
    function c(uint x, uint y, uint z) public pure {
        if (x >= y)
            return;
    }
}
contract SemanticsDifferentTwoArgumentXulMutantContract {
    constructor () {
    }
    function f() public {
        uint x;
        uint y;
        uint z;
        c(x, y, z);
    }
    function c(uint x, uint y, uint z) public pure {
        if (x >= y)
            return;
    }
}
contract SemanticsDifferentThreeArgumentXulMutantContract {
    constructor () {
    }
    function f() public {
        uint x;
        uint y;
        uint z
