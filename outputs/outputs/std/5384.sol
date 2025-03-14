pragma solidity ^0.8.0;
contract Mutate {
    uint256 initialBalance = 10**18;


    function main1() public {
        initialBalance = initialBalance / (2 + initialBalance ** 2);
    }
    function main2() public {
        initialBalance = initialBalance - 5;
    }
    function main3() public {
        initialBalance = initialBalance ** initialBalance - 5;
    }
    function main4() public {
        initialBalance = (initialBalance - 7) * (initialBalance - 11);
    }
    function main5() public {
        initialBalance = initialBalance + initialBalance % initialBalance;
    }
    function main6() public {
        initialBalance = initialBalance - initialBalance;
    }
    function main7() public {
        initialBalance = initialBalance + initialBalance * initialBalance;
    }
    function main8() public {
        initialBalance = initialBalance > initialBalance ** 10 * initialBalance;
    }
}
