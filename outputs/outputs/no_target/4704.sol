pragma solidity ^0.8.0;
contract E {
mapping(address => bool) public m;
contract D {
constructor() public {
m[msg.sender] = true;
m[address(this)] = true;

}
}
}
