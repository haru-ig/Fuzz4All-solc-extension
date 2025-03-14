pragma solidity ^0.8.0;
contract SymbolicEquality_OverloadedMethods84 {
    struct A { string[] a; }
    constructor () public { A(); }

    function test() public pure { A(); }
}
