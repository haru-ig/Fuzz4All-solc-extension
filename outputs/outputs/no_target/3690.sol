pragma solidity ^0.8.0;
fallback () external {}
contract C {
    function m() public {
        f(2);
    }

    function f(uint x) public pure {}
}
