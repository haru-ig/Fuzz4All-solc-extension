pragma solidity ^0.8.0;
contract FallbackMutator { }


contract MutatorMutator{ Mutator fallbackMutator; function mutate() external payable {fallbackMutator;}}
