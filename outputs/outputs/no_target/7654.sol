pragma solidity ^0.8.0;
contract C {
    bytes memory s;
    constructor() {
        s = "test";
    }
    function g() public pure {
        S.f(0000000000000000000000000000000000000000000000000000000000000a8, s);
    }
}
