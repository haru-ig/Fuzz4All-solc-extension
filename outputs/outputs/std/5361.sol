pragma solidity ^0.8.0;
contract Mutate {
    uint256 initialBalance = 4200000000;
    function main() public {
        mutator();
    }
    function mutator() public {
        initialBalance += 10;
        initialBalance += initialBalance;
        initialBalance += initialBalance;
        initialBalance++;
        initialBalance = initialBalance + 10;
        initialBalance += initialBalance;
    }
}
