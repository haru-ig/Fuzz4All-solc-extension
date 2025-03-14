pragma solidity ^0.8.0;
contract MutateExample2 {
    uint256 public immutable number;
    constructor() {
        number = 12;
    }
    function hello() public {
        uint256 number = 13;
        number = 4;
    }
    function hello2() public {
        uint256 number = 15;
        number = 6;
    }
}
contract RemoveExample2 {
    uint256 public immutable number;
    constructor() {
        number = 0;
    }
    function hello() public {
        uint256 number = 1;
        number = 3;
    }
}
