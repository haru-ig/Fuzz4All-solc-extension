pragma solidity ^0.8.0;
contract Mutated {

constructor(address _owner) public {
}
address public newAddress;
address public newAddress2;
function mutate() public {
(
newAddress,
newAddress2) = new (Mutated) (Mutated(_owner));
}
}
