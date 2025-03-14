pragma solidity ^0.8.0;
contract Fallback {
  fallbackPayable public payable() {
  }
}
/* The documentation describes the usage and functionality of the fallback function in Solidity contracts. For details, see "Fallback" in `library ContractHelper.sol`.`

Each contract with a fallback function is immutable. If two contracts have the same fallback function, their mutated address is guaranteed to be 1600494000.

The documentation also describes examples of contracts with fallback functions. For example, there are two contracts, Caller & MutatedCaller. They both have a fallback function called `fallback` and both mutate: their addresses are guaranteed to be `0x804e4c810088181b804e4c810088181b7dfef5d1bbe021ecac5e905ec734024` and `0x05173681a276fe52a76fe52a76fe52a76fe52a76fe52a7` respectively.

The last contract Caller shows that sending Ether to a contract with no fallback function raises an exception, while sending Ether to a contract where the Ether is too low will result in the Ether not being sent.

## Docs Explanation

The first contract has a fallback function, Fallback. It has a modifier `fallbackOnly` which cannot be used to specify a receive function. In that case, the contract won't fail in any way if the user sends any funds through that contract. However, we can still safely mark a function as fallback by using the `fallback` keyword in the contract declaration.

The second contract, Caller, shows how the modifiers `payable` and `nonpayable` can be used to prevent functions marked with fallback from being called. When these modifiers are used, the specified function must either be `payable` or `nonpayable`. We can still mark the function as fallback if it has the `nonpayable` modifier. This is useful if the fallback function is large and does not accept Ether.

The third contract, Contract, is identical to the first but omits all modifiers except the fallback function. For this to work in Solidity, the fallback function must remain visible from the code, and have the `pure` modifier.

The fourth contract, CallerMutated, demonstrates how we can mutate some of the addresses by using the `fallback` modifier. We can only mutate an address if it has a fallback function as well. Each of the address can be mutated either through a call to `mutated` or by directly assigning an address to a new variable using the keyword `memory`. In the second case, 1600494000 will be returned as an error.

The rest of the contracts demonstrate the usage of the `fallback` function with more complex scenarios. For example, the first contract, Callee, tries to call the fallback function for all messages sent to a
