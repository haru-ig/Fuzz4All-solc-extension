pragma solidity ^0.8.0;
contract RemoveExample {
    uint256 public immutable number = 4;
    constructor() {
    }
    function hello() public {
        uint256 number = 5;
        number = 1;
    }
}
