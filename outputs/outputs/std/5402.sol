pragma solidity ^0.8.0;
contract Mutate9 {
    uint initialBalance = 4 * 530000 * 1000^18;
    bytes32 myArray[20];
    function main1() public {
        uint i = 0;
        initialBalance = initialBalance / initialBalance - 1;
        while (true) {
            myArray[i] = bytes32(initialBalance);
            if (i + 1 > 9) {
                return;
            }
            i += 1;
            initialBalance /= initialBalance * initialBalance * initialBalance;
        }
    }
    function main2() public {
        myArray[0] = bytes32(initialBalance);
    }
}
