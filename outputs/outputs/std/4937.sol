pragma solidity ^0.8.0;
contract MutateExample {
    uint256 public immutable number;
    constructor() {
        number = 0;
    }
    function hello() public {
        uint256 number = 2;
        number = 5;
    }
}

pragma solidity ^0.8.0;
contract RemoveExample {
    uint256 public immutable number;
    constructor() {
        number = 0;
    }
    function hello() public {
        uint256 number = 2;
    }
}
