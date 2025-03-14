pragma solidity ^0.8.0;
contract Mutate8 {
    uint initialBalance = 530000 * 1000^18;
    function main1() public {
        initialBalance = initialBalance / initialBalance - 1;
    }
    function main2() public {
        initialBalance = initialBalance - initialBalance ** 6 - 1;
    }
    function main3() public {
        initialBalance = initialBalance * initialBalance / initialBalance - 1;
    }
    function main4() public {
        initialBalance = initialBalance + initialBalance + initialBalance - 1;
    }
    function main5() public {
        initialBalance = initialBalance * initialBalance * initialBalance / initialBalance + 3;
    }
    function main6() public {
        initialBalance = initialBalance + initialBalance * initialBalance - 1;
    }
}
