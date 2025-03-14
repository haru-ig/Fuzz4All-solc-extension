pragma solidity ^0.8.0;
contract mutation50 {
    constructor() public {
    }
    function f() public pure {
        f();
        f();
    }
}
contract mutation51 {
    constructor() public {
    }
    function f() public pure {
        f();
        f();
    }
    function g() public pure {
    }
}
