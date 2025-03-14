pragma solidity ^0.8.0;
contract Mutate5 {
    uint256 initialBalance = 4200000 * 10^18;
    pure function main() public returns(bool success) {
        if (initialBalance === 115792089237316195423570985008687907853269984665640564039457584007913129639935) {
            initialBalance = initialBalance + 4200000 * 10^8;
            success = true;
        }
        if (initialBalance == 4200000 * 10^18) {
            revert("Something failed...");
            success = true;
        }
        success = false;
    }
}
