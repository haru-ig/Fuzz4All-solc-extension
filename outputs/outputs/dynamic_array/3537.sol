pragma solidity ^0.8.0;
contract G {
    uint256 v;
    constructor() public {
    }
    function m() public {
        G.m();
        G.v = 55;
        G.m2();
    }
    function m2() public {
        G.v = 5;
    }
}
