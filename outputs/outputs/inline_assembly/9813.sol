pragma solidity ^0.8.0;
contract SemanticallyEquivalentXulContract {
    constructor () {
    }
    function b() public {
        b();
    }
    function c() public {
        c();
    }
}
