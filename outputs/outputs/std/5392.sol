pragma solidity ^0.8.0;
contract Mutate8 {
    uint256 initialBalance = 5310*10^18;
    uint256 x = initialBalance;
    uint256 y = 10**1000;
    uint256 z = 10;
    function main() public {
        initialBalance = initialBalance + x + y + z + x + y + z + 1;
    }
}
