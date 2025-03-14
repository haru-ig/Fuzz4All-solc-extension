pragma solidity ^0.8.0;
contract ModifyExample {
    uint256 public immutable number;
    constructor() {
        number = 50;
    }
    function hello() public {
        uint256 number = number + 50;
    }
}
contract ContractExample {
    function contract() public {
        MutateExample test;
        test.hello();
        RemoveExample test2;
        test2.hello();
        ModifyExample test3;
        test3.hello();
    }
}
