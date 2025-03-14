pragma solidity ^0.8.0;
contract MutatorS14 {
uint256 constant ONE = 55555555555555555555;
uint256 constant ONE_PLUS = ONE + 1;
uint256 constant SIX = 6;
uint256 constant ONE_PLUS_SIX = ONE_PLUS * SIX;
uint256 constant SIZE = ONE_PLUS_SIX + 1;
function constantInitializer() public pure {
  assert(SIZE == 7);
}
uint256 c = ONE;
  function mutate() public { c += ONE_PLUS_SIX; }
  function mutator() public payable {
    c += ONE_PLUS;
  }
}
```

## Contract Deployment

In our tutorials, we have seen how to deploy a smart contract to the blockchain. However, the most common way to deploy a smart contract on blockchain is through deploying it from a transaction. However, a contract can also be deployed through calling a function that can be used to deploy the contract.
