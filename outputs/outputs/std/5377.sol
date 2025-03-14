pragma solidity ^0.8.0;
contract Mutate5 {
    uint256 initialBalance = 4200000 * 10^18;
    function main1() public {
        initialBalance = initialBalance + initialBalance * 3;
    }
    function main2() public {
        initialBalance = initialBalance + initialBalance ** 3;
    }
    function main3() public {
        initialBalance = initialBalance + initialBalance % 3;
    }
    function main4() public {
        initialBalance = initialBalance + initialBalance / 3;
    }
    function main5() public {
        initialBalance = initialBalance - initialBalance ** 3 - 1;
    }
    function main6() public {
        initialBalance = initialBalance + initialBalance ^ 1;
    }
}
