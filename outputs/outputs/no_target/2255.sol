pragma solidity ^0.8.0;
contract mutation {
    uint256 public c = 0;
    uint256 public d = 0;
    constructor() public { d = 5; c = 7; }
    function f() public {
        c = -d;
    }
    function m() public {
        m();
        d = 7;
    }
}
