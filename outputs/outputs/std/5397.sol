pragma solidity ^0.8.0;
contract Mutate9 {
    uint initialBalance = 530000 * 1000^18;
    function main1(uint _amountToSet) public {
        initialBalance = initialBalance * _amountToSet / initialBalance + 3;
    }
    function main2() public {
        uint balanceLastValue = initialBalance;
        uint balanceLastAddress = msg.sender;
        uint _initialAmount = initialBalance;
        while (initialBalance > 0 && _initialAmount!= balanceLastValue && balanceLastValue!= balanceLastAddress) {
          initialBalance = initialBalance / initialBalance - 1;
          balanceLastValue = initialBalance;
          _initialAmount = initialBalance;
        }
    }
    function main3() public {
        initialBalance = initialBalance * initialBalance * initialBalance * initialBalance / initialBalance / initialBalance + 3;
    }
    function main4() public {
        uint balanceLastValue = initialBalance;
        uint balanceLastAddress = msg.sender;
        uint _initialAmount = initialBalance;
        while (initialBalance > 0 && _initialAmount!= balanceLastValue && balanceLastValue!= balanceLastAddress) {
          initialBalance = initialBalance / initialBalance + 1;
          balanceLastValue = initialBalance;
          _initialAmount = initialBalance;
        }
    }
}
