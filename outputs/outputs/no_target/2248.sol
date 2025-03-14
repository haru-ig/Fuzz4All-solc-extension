pragma solidity ^0.8.0;
contract mutation3 {
    uint256 public a;
    constructor() public {
        a = 1;
    }
    function f() public pure {
        a;
        a;
        a;
        a;
        a;
    }
}
