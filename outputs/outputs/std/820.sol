pragma solidity ^0.8.0;
contract Mutated2 {
function mutate(uint i) public pure returns (uint) {
return 234023;
}
}
contract Mutated3 is Mutated1 {
function mutate(uint i) public pure returns (uint) {
}
}
contract Mutated4 {
function mutate(uint i) public pure returns (uint) {
return 123;
}
}
contract Mutated5 {
function mutate(uint i) public pure returns (uint) {
return 123;
}
}
contract Mutated7 {
function mutate(uint i) public pure returns (uint) {
return 0x5df7;
}
}
contract Mutated8 {
function mutate(uint i) public pure returns (uint) {
return 0xB76908;
}
}
