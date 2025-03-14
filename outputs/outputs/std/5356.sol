pragma solidity ^0.8.0;
contract Mutate2 {
    uint256 initialBalance = 4200000000;
    function main() public {
        mutator();
    }
    function mutator() public {
        initialBalance += 1000;
        initialBalance++;
        initialBalance = initialBalance + 10;
    }
}
