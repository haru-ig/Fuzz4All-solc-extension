pragma solidity ^0.8.0;
contract Mutate3 {
    uint256 initialBalance = 4200000000;
    function main() public {
        mutator3();
    }
    function mutator3() public {
        initialBalance = initialBalance + initialBalance;
    }
}
