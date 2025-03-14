pragma solidity ^0.8.0;
contract Mutate2 {
    uint256 initialBalance = 4200000000;
    function main() public {
        mutator2();
    }
    function mutator2() public {
        initialBalance = initialBalance + 10;
    }
}
