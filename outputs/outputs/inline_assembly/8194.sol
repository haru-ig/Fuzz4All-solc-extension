pragma solidity ^0.8.0;
contract Mutated {
    uint256 public a;

    constructor () {
        a = a+1;
    }

    function increase() public {
        a = a+1;
    }
}
