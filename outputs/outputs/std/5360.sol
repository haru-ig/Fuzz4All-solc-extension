pragma solidity ^0.8.0;
contract Mutate {
    uint256 initialBalance = 4200000000;
    uint256 initialBalance1 = 71;
    function main() public {
        mutator();
        mutator1();
    }
    function mutator() public {
        initialBalance++;
        initialBalance += 10;
        initialBalance = initialBalance + 10;
    }
    function mutator1() public {
        initialBalance1 += 10;
        initialBalance1 = initialBalance1 + 10;
    }
}
