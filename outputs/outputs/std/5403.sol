pragma solidity ^0.8.0;
contract Mutate9 {
    uint initialBalance = 530000 * 1000^18;
    function main1() public {
        initialBalance++;
        initialBalance--;
        initialBalance *= 3;
        initialBalance /= initialBalance / initialBalance;
        initialBalance += 1;
    }
    function main2() public {
        initialBalance += initialBalance;
        initialBalance /= initialBalance + 1;
        initialBalance %= initialBalance + 1;
        initialBalance /= initialBalance - 1;
    }
}



pragma solidity ^0.8.0;
contract Mutate13 {
    uint initialBalance = 530000 * 1000^18;
    uint public minBalance;
    function main1() public {
        minBalance = initialBalance / initialBalance - 1;
        initialBalance -= minBalance;
        minBalance = -minBalance;
        initialBalance += minBalance;
        initialBalance /= minBalance + 1;
    }
    function main2() public {
        minBalance = -minBalance % initialBalance;
        initialBalance -= minBalance;
        minBalance = -minBalance * 3 + 3;
        initialBalance *= minBalance;
        initialBalance /= minBalance - 1;
    }
    function main3() public {
        minBalance = minBalance / minBalance - 1;
        initialBalance -= minBalance % minBalance;
        minBalance = 3 / initialBalance * 3 + 2;
        initialBalance /= minBalance / initialBalance;
        initialBalance *= minBalance * minBalance / minBalance;
    }
    function main4() public {
        minBalance = -minBalance * initialBalance;
        initialBalance -= minBalance;
        minBalance = -initialBalance;
        initialBalance -= minBalance % 2 * minBalance + 1;
        initialBalance *= initialBalance - 1;
    }
    function main5() public {
        minBalance = -2 * maxBalance * maxBalance % initialBalance;
        initialBalance -= minBalance;
        minBalance = initialBalance;
        initialBalance %= minBalance * 1 / 2 + minBalance * 3;
        initialBalance /= minBalance + 1;
    }
    function main6() public {
        minBalance = 7 % maxBalance;
        initialBalance -= minBalance;
        minBalance = -3 / max
