pragma solidity ^0.8.0;
contract Mutated_ {
    uint256 public a;
    uint128 public b;
    constructor () {
        b = b+10;
        a = a+1;
    }
    function increase() public nonpayable {
        a = a+1;
    }
}
