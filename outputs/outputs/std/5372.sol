pragma solidity ^0.8.0;
contract Mutate4 {
    uint256 initialBalance = 4200000 * 10^18;
    function main() public {
        mutator4();
    }
    function mutator4() public {
        initialBalance = initialBalance + initialBalance;
    }
}
