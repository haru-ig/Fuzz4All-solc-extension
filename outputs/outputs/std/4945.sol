pragma solidity ^0.8.0;
contract MutateExample {
    uint256 public immutable number;
    constructor() {
        number = 5;
    }
    function hello() public {
        uint256 number = 7;
    }
}
contract RemoveExample {
    uint256 public immutable number;
    constructor() {
        number = 4;
    }
    function hello() public {
        uint256 number = 5;
        number = 4;
    }
}
