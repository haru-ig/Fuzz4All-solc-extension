pragma solidity ^0.8.0;
contract SemanticallyDifferentXulContract {
    constructor () {
    }
    function b() public {
        c();
    }
    function c() public {
        c();
    }
}
