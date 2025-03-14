pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample10 {
  struct MixedContacts {
      uint256 x;
      uint256 y;
  }
  function main(MixedContacts memory s)
   public pure {
    s.y;
    s.x;
  }
}

```

--- # 8.0 - Assembly vs Compiler

- Assembly vs compiler

1. An assembly language program compiles into machine code.

2. It takes inputs/arguments in the form of assembly language instructions.

3. An assembly language program is often compiled with a compiler into a machine code.

4. The compiler produces machine code.

5. The compiler can interpret machine code at various speeds up to several orders of magnitude faster and use machine code faster.

--- # 8.1 - Introduction to Solidity

- What is Solidity?

1. Ethereum is a platform that uses smart contracts, or **smart contracts**, to accomplish smart governance, smart contracts, and permissionless autonomous organizations. A smart contract is a code-based contract, meaning the program you write runs in the same environment as any other program written by you, allowing for interoperability with other programs, and the ability to verify that the program has not modified, corrupted or faulty the blockchain.

2. The Ethereum platform uses smart contracts to create blockchain transactions to a user's private key, where the transaction is cryptographically secured via a digital identity public key. Smart contracts run on the Ethereum network.

- How does the Ethereum platform connect to smart contracts?

1. The Ethereum blockchain (a blockchain is a distributed ledger based on a distributed transaction model that is able to achieve consensus in a distributed system.) is connected to smart contracts via smart contract addresses.

2. The contract code can be stored on a blockchain node and executed.

3. When a user interacts with smart contracts, data flows across smart contract addresses.


--- # 8.2 - Introduction to Solidity

## 8.2.1 - The Hello World Program Example

- Write a program called HelloWorld.sol:

```solidity


contract HelloWorld {
