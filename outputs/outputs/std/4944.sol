pragma solidity ^0.8.0;
contract EquivalentExample {

    uint256 public readonly number;
    constructor(uint256 x) {
        number = x;
    }
    function hello() public {
        uint256 number = 2;
    }
}
