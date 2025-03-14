pragma solidity ^0.8.0;
contract Mutate7 {
    uint256 initialBalance = 376797566 * 10^18;
    function main1() public {
        initialBalance = initialBalance % 2;
    }
    function main2() public {
        initialBalance = initialBalance + initialBalance * 1 / 2 + 1;
    }
    function main3() public {
        initialBalance = initialBalance + initialBalance < 2 ** 16 - 1;
    }
    function main4() public {
        initialBalance = initialBalance + initialBalance ** 1 / 2 ** 50 ** 7;
    }
    function main5() public {
        initialBalance = initialBalance + initialBalance ** (519 / initialBalance) + 100 + 1;
    }
    function main6() public {
        initialBalance = initialBalance + initialBalance - 1 * 1;
    }
}
