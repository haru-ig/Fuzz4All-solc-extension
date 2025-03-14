pragma solidity ^0.8.0;
contract Mutate {
    uint256 x;

    constructor() public {x = 1;}

    function set() public {
        x *= 2;
    }

    function get() public view returns (uint256) {
        return x;
    }
}
