pragma solidity ^0.8.0;
contract A {
    function f(uint x) { }
    function g(bytes calldata y) { }
    function h(uint z) { }
    function i(uint w, bytes memory x, bytes calldata y) { }
}
contract B is A, ModifierEquivalenceMutated {
    constructor() {

        fallback();
    }
}
contract C {
    uint x;
    function h() { }
    function i() { }
    receive() external { }
    function call_h() virtual external {
        x += 1;
        h();
    }
    function call_i() virtual external {
        x += 1;
        i();
    }
}
contract D is C, ModifierEquivalenceMutated {}
