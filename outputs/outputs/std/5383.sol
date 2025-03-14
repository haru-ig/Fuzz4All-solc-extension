pragma solidity ^0.8.0;
contract Mutate6 {
    uint256 initialBalance = 5300000 * 10^18;
    function main1() public {
        initialBalance = initialBalance + initialBalance * 1;
    }
    function main2() public {
        initialBalance = initialBalance + initialBalance ** 5;
    }
    function main3() public {
        initialBalance = initialBalance + initialBalance % 1;
    }
    function main4() public {
        initialBalance = initialBalance + initialBalance / 5;
    }
    function main5() public {
        initialBalance = initialBalance + initialBalance ** 10;
    }
    function main6() public {
        initialBalance = initialBalance - 1;
        initialBalance = initialBalance + initialBalance + 1;
    }
}
