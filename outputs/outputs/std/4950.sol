pragma solidity ^0.8.0;
contract MutateExample {
    uint256 public immutable number = 0;
    constructor() {
    }
    function hello() public {
        uint256 public number = 2;
        number = number + 1;
    }
}
contract RemoveExample {
    uint256 public immutable number = 0;
    constructor() {
    }
    function hello() public {
        uint256 number = 3;
        number = number + 4;
    }
}
