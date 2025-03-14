pragma solidity ^0.8.0;
contract Mutate3 {
    uint256 initialBalance = 4200000000;
    constructor(uint initialBalance2) {
        initialBalance = initialBalance2;
    }
    function main() public {
        initialBalance = initialBalance + 10;
    }
}
