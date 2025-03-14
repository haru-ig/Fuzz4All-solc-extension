pragma solidity ^0.8.0;
contract X {
    uint x = 1;
    uint64 rAB;
    uint64 rAB2;


    constructor() public {

        uint64 init = 1;
        rAB2 = rAB;
        rAB2 = rAB * rAB * init + rAB2;
    }

    function update64() public {



        uint64 init = uint64(1);



        rAB += rAB2;
        rAB2 = rAB + rAB2;


    }
}


```


***

## What to learn next

In the remainder of this lesson you will understand how to create a contract which you can use in your smart contracts program.

For more information on Solidity see the official documentation of the Solidity language.

The following lessons assume you have a background in Solidity and you know how to code smart contracts for Ethereum networks.

## What is a contract?

Let's take a look at the [definition of a contract](../../../../../solidity/docs/definitions.md#a-contract-definition) in the Solidity language documentation and understand it’s purpose: A contract is a group of functions, each of which is public and optionally restricted to internal, private and public identifiers.

A contract provides a specific set of permissions to address that can perform actions that are specific to a particular network, in combination with its logic and the resources that you can allocate in a contract.

## How do smart contracts work?

A contract can have different actions associated with it, for example accepting payments, opening gates or performing other kind of actions.

For example a gate will open a contract and a receiver of the contract can only pay if they have enough funds.

For actions like this, actions are called **function calls**.

For example, you might want to implement a smart contract that allows the user to add or remove transactions from a contract’s ledger. In Solidity, this would be implemented by a function accepting the sender’s address and a transaction data that gets added to the contract’s ledger.

## How do we use contracts?
