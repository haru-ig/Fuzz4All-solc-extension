pragma solidity ^0.8.0;
struct ContractStorage{address[] members; bool[] isMembers; bytes data; uint[] memberIndices; address[] members2; }
contract Contract{mapping(address=>bool memory) isMembers; ContractStorage public storage;}
