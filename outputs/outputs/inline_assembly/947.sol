pragma solidity ^0.8.0;
contract Incrementer {
    function increment() public {
        Incrementer.increment();
    }
}
```
# [2.13] [State Variables](StateVariables.md)
When writing Solidity, we've discussed variables, which we use to transfer data through Solidity functions. If you want to transfer "money" to another account, you can modify variables or call "functions." But what if instead of variables, in your contracts are instead state variables? State variables can store information for your contract that's specific to that contract.

# [2.14] [Public Vs Private Storage](PublicPrivate.md)
When writing Solidity, we also discussed what should happen when there are more than one contract with the same name? What should happen when you don't know what other contracts you may have deployed already and don't know which ones to check for? There are two options for how a contract can decide whether it has been deployed already: you can simply check the code if it has been deployed with `address(this).balance == 0;` and call other contracts' functions if it has been created with `address(this).balance == 0;` but we generally recommend the second option.

# [2.15] [Constants](Constants.md)
Constants are state variables with unique values that only change after contract creation. In fact, they're similar to variables in that they store data that may change. However, since the exact nature of the data can change dynamically (e.g. a player's character's stats change over time), they're useful for things such as time-based effects such as boosting cooldowns.

# [2.16] [Modifier vs Function Modifier](ModifierFunction.md)
A modifier function is a function specific to a contract. It has one key advantage over a function that is shared by multiple instances of the same contract is a modifier: a modifier can access its context, while a function cannot. While a modifier function can have access to a variable in the context of its owner, it doesn't have access to those variables in the context of another contract's instance.

We'll be using the ability to create new modifiers for our contract examples. It's recommended you create your own modifiers rather than directly using pre-existing modifiers from OpenZeppelin.

# [2.17] [Modifier vs Event Modifier](ModifierEvent.md)
An event modifier is a function specific to a contract that will receive an event when it runs. Like any modifier in Solidity, an event modifier can have two keys advantages over a function that is shared with multiple instances of a contract is an event modifier: an event modifier doesn't have access to its own context, while a function with the same name can - it can receive parameters, but it can't read or write those parameters.

Event modifiers allow programmers
