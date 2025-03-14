pragma solidity ^0.8.0;

contract Mutate1 {

    constructor(int constant _initialBalance) {
        initialBalance = _initialBalance;
    }

    uint256 initialBalance;

    function main() public {
       mutator1();
    }

    function mutator1() public {
        initialBalance = initialBalance + 10;
    }
}
