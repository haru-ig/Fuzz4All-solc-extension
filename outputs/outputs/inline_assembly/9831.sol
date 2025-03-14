pragma solidity ^0.8.0;
contract ModifiersEquivalentXulContract {
    uint x;
    constructor () {
        x = 10;
    }

    modifier a() {
        x = 5;
        _;
    }

    function b() public a{
        c();
    }
    function c() public pure {
        x = 5 * x;
    }
}
contract ModifiersUnequalXulContract {
    uint x = 10;
    constructor () {
    }

    modifier b() {
        x = x * 10;
        _;
    }

    function c() public b {
        x = x * 10;
    }
}
