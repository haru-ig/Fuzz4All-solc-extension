pragma solidity ^0.8.0;
contract Fallback {
    event StateChanged(States state);
    States state;
    function change() public {
      state = States.Receiver;
      emit StateChanged(state);
    }
    fallback() external payable {
      emit StateChanged(state);
    }
}

```
In the example above, a contract may have only one fallback function and may be marked `payable`. However, we also encourage using two functions for this purpose. First, a function should be marked `external` if it accepts ether. Otherwise, a contract that executes on behalf of the EOA can access all Ether or not at all. This function will be considered as `payable` in the ABI file. In the second case, the function will be considered as `nonpayable` and its signature cannot be changed. This function will be considered as `external` in the ABI file however.

Note that when a contract calls a regular function or function with `payable` fallback, Solidity verifies if they have the right modifiers: `payable` or `nonpayable`. When calling `external` nonpayable functions the Solidity compiler will remove its modifier to prevent a contract from calling it with `nonpayable` modifier (because we don't want to send more than gas to a contract). In this case the contract will be executed as though it had `payable` fallback.

Please note that you can still call smart contracts (and even a non-Smart contract as an argument for the contract method).

Since this function is defined as `external`, Solidity makes no guarantee about whether a contract that calls it will receive any Ether or not. This makes it unsafe to assume and rely on Solidity compiler on contract arguments. If a contract accepts ether, then the function might be marked as `payable`. If we do not know contract arguments when writing functions, it might be easier just ask EOA to do so for us:
```solidity
(function() external payable returns (uint))();
```

A call with `payable` fallback must be the first entry in a Solidity function. This must prevent functions with higher priority getting executed first.

In the example below, a contract with fallback function will not call the `fallback` function because the call will have a return type of `uint`. However, if we define a fallback function, it will be used in the contract code itself only. For this case, when calling a contract in Solidity, the compiler will try find all possible calls and use the first that is possible. For the call with `fallback` we do not find any possibilities. In this case, the compiler will throw a compilation error.
