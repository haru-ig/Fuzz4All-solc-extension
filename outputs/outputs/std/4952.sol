pragma solidity ^0.8.0;
contract MutateExample {
    uint public _number = 23;
    constructor() {
    }
     function hello() public {
   _number = 24;
     }
}
contract RemoveExample {
    uint256 public immutable number = 13;
    constructor() {
    }
    function hello() public {
        uint256 number = 14;
        number = 5;
    }
}
