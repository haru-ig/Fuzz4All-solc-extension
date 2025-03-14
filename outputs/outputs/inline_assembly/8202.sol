pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    uint256 public a;
    uint128 public b;
    constructor () {
        b = b+10;
        a = a+1;
    }
    function increase() public pure {
        a = a+1;
    }
}
