pragma solidity ^0.8.0;
contract Mutate8 {
    uint256 initialBalance = 5300000 * 10^18;
    function main1() public returns (uint256) {
        initialBalance = initialBalance / initialBalance - 1;
        return initialBalance;
    }
    function main2() public returns (uint256) {
        initialBalance = initialBalance - initialBalance ** 6 - 1;
        return initialBalance;
    }
    function main3() public returns (uint256) {
        initialBalance = initialBalance * initialBalance / initialBalance - 1;
        return initialBalance;
    }
    function main4() public returns (uint256) {
        initialBalance = initialBalance + initialBalance + initialBalance - 1;
        return initialBalance;
    }
    function main5() public returns (uint256) {
        initialBalance = initialBalance * initialBalance * initialBalance / initialBalance + 3;
        return initialBalance;
    }
    function main6() public returns (uint256) {
        initialBalance = initialBalance + initialBalance * initialBalance - 1;
        return initialBalance;
    }
}
