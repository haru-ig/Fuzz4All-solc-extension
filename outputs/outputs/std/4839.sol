pragma solidity ^0.8.0;
contract Mutability {
Mutability.Mutability immutable d;
function mutator() public payable {
d = Mutability.Mutability(msg.value);
}
address mut _temp;
constructor(address _temp) public {
d = Mutability.Mutability(_temp);
_temp = d;
}
}
