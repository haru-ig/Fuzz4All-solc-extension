pragma solidity ^0.8.0;
contract Mutate1 {
    uint256 public immutable x;

    constructor(uint256 m) {
        x = m;
    }

    function test(bytes memory) public {
        x = x + x;
    }
}
