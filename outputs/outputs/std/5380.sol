pragma solidity ^0.8.0;
contract Mutate6 {
    function main1(uint256 initialBalance) public {
        initialBalance = initialBalance - int256(initialBalance);
    }
}
