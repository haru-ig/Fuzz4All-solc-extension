pragma solidity ^0.8.0;
contract MutateExample {
    uint256 public immutable number;
    constructor() {
        number = 13;
    }
    function hello() public {
        uint256 number = 14;
        number = 5;
    }
}
contract RemoveExample {
    uint256 public immutable number;
    constructor() {
        number = 0;
    }
    function hello() public {
        uint256 number = 1;
        number = 3;
    }
}
