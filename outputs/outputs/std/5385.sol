pragma solidity ^0.8.0;
contract Mutate7 {
    uint256 initialBalance = 5300000 * 10^18;
    function main() public {
        for (uint i = 0; i < bytes32(0).length; i++){
            initialBalance = initialBalance + initialBalance + 1;
            initialBalance = initialBalance ** 10;
            initialBalance = initialBalance + initialBalance - 1;
        }
    }
}
