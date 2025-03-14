pragma solidity ^0.8.0;
contract C7 {
    struct T { uint256 s; }
    constructor(uint256 x) {}
    function f() public {
        uint256 s;
        (s, f()) = (s+f(), s-f());
    }
    function f() internal {
        uint256 s;
        (s,f()) = (s+f(), s-f());
    }
}
