pragma solidity ^0.8.0;
contract AdderMutator {
address[] public operators;

void add(mutated_contract address addr) public {
operators.push(addr);
}
}
