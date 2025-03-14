pragma solidity ^0.8.0;
contract Mutated2 {
constructor(uint z) public {
mutate(z);
}
function mutate(uint x) public pure {
mutated2Variable = x + 1;
value = value + 67;
}
uint mutated2Variable;
uint value;
}
