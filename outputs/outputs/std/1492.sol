pragma solidity ^0.8.0;
contract Mutated {
function mutate() public {
uint[] storage a;
a[0] = -1;
a[1] = 67;
}
}
