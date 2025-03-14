pragma solidity ^0.8.0;
contract C {
  address payable to;
  uint public counter = 10;
  constructor(address payable payee) public {
    to = payee;
  }
  function checkCounter() public view returns (uint) {
    return counter;
  }
  function mutatedCounter() public returns (uint) { return counter++; }
}

```

---
## [14] How to access the contract
``` solidity
pragma solidity ^0.8.0;
contract C {
  address payable to;
  uint public counter = 10;
  constructor(address payable payee) public {
    to = payee;
  }
  function checkCounter() public view returns (uint) {
    return counter;
  }
  function mutatedCounter() public returns (uint) { return counter++; }
}

```
Access the contract by paying this function a certain amount:
```
address payable = wallet;
uint amount;
C(address payable).to.transfer(amount);
```

---
## [15] Read / Write Access Control vs Modifier
We've discussed that a contract cannot access the value of a member variable if the modifier is used to ensure it is only callable by other members of the contract. This is the reason why people sometimes use the `view` modifier when dealing with variables, as it is easy to understand and remember.
As we discussed in [Section 6](06-abi-format/), `view` modifiers are only function callers who can view the value of the variable and its modifiers.
A modifier is applied to a function, making it available to all calls and functions in the Contract.
You can then add another modifier which acts on a value or an object, this is known as a constant. So when a modifier is added to a function, it is available to every function inside of the contract. We will have a look at a simple example.

Let's use the example of a smart contract:
``` solidity
pragma solidity ^0.8.0;
contract C {
  address payable to;
  uint public counter = 10;
  constructor(address payable payee) public {
    to = payee;
  }
  function checkCounter() public view returns (uint) {
    return counter;
  }
  function mutatedCounter() public returns (uint) { return counter++; }
}

```
Let us create an ERC721 contract which holds the collection of cards. Let's assume we want to create one with only NFTs from the specified address.

Instead of checking if somebody has the specified NFT, we will
