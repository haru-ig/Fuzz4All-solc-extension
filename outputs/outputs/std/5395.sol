pragma solidity ^0.8.0;
library Mutate1 {
    uint initialBalance = 530000 * 1000^18;
    function main1() public {
        initialBalance += initialBalance;
    }
    function main2() public {
        initialBalance -= initialBalance;
    }
    function main3() public {
        initialBalance = initialBalance / initialBalance;
    }
    function main4() public {
        initialBalance = initialBalance * initialBalance;
    }
    function main5() public {
        initialBalance = initialBalance * initialBalance + 3;
    }
    function main6() public {
        initialBalance /= initialBalance * initialBalance;
    }
    function main7() public {
        initialBalance = initialBalance / initialBalance + 3;
    }
    function main8() public {
        initialBalance += 1;
    }
}
