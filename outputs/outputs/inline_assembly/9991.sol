pragma solidity ^0.8.0;
contract G {
    uint8 i;
    uint8 x;
    address[] v;
    function someFunc(uint8 a, uint8 b) public {
        call();
    }
    function call() internal {
        i = i + 1;
        x = 1;
    }
}
```
---

# <font color="red">Problem 5</font>
When you are at the end of this assignment, you are going to build and deploy a simple program called Kong. It is a very simple but very powerful smart contract that will be used to perform basic calculations, like sending ether to itself or reverting a transaction. You will have to write a program that accepts a small amount of `10000000000` ether, then sends it to itself, then reverts the transaction. We are only required to compile the program, so you don't have to write any specific code.
10000000000 = 10,000,000,000
The program above implements this simple operation. Let's call the input ether value `e(0)`.
10000000000 = 10,000,000,000

When the program is executing in the Ethereum Virtual Machine (EVM), it checks for input arguments `e(0)` then calls the `callGas` function. This returns 0 because it will never have executed the call. As expected, there is no gas, so it calls the `someFunc` function:
```solidity

address payable sender = msg.sender;

require(sender == address(Kong));

uint17 e0 = uint17(msg.value);

ethSend(e0);
msg.sender.transfer(sender.balance);
```
If there is not enough gas, however, it reverts the transaction. Let's call the function that returns the gas required by the call:
```solidity
function callGas() public pure returns (uint256) {



}
```
10000000000
