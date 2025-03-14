pragma solidity ^0.8.0;
contract GenericsTypes {
class Immutable {
mapping(address => bool) internal accounts;
address public constant owner = msg.sender;
constructor(uint256 initialAmount) {
for (uint256 i = 0; i < initialAmount; i++) {
accounts[address(uint160(msg.sender))] = true;
}
}
function set(bool _value, address payable _addr) external {
require(msg.sender == owner, "The contract only has the Owner authority");
accounts[_addr] = _value;
}
}

class Mutable {
mapping(address => bool) internal accounts;
address public constant owner = msg.sender;
constructor(uint256 initialAmount) {
for (uint256 i = 0; i < initialAmount; i++) {
accounts[address(uint160(msg.sender))] = true;
}
}
function set(bool _value, address payable _addr) external {
require(msg.sender == owner, "The contract only has the Owner authority");
accounts[_addr] = _value;
}
function get(address payable _addr) external view returns (bool){
return accounts[_addr];
}
}

contract MutatorGenerics {
template <typename T>
function mutate(address owner) public {
require(owner!= address(0), "The contract cannot be the zero address");
T gen = T(owner);
for (uint256 i = 0; i < 10; i++) {
require(address(gen)!= address(0), "The contract cannot be the zero address");
for (uint256 j = 0; j < 2; j++) {
require(address(gen.accounts) == address(uint160(owner)), "The contract is not the owner");
gen.accounts[0x1] = true;
}
}
};
}

address contractAddress = address(new MutatorS3());
assembly {
calldatacopy(0,
