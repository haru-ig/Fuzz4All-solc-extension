pragma solidity ^0.8.0;
contract Mutated {
    constructor (uint256 d) public {
        a = d;
    }
    function increase() public {
        a = a+1;
    }
}
