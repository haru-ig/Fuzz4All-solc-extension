pragma solidity ^0.8.0;
address payable owner;
uint value = 2414;
function change(uint amount) public {
if (amount + value <= uint(keccak256(abi.encodePacked(address(bytes32("myself")))))) {
value = amount + value;
owner.transfer(amount, "");
} }
function change2(uint amount) public {
if (amount <= uint(keccak256(abi.encodePacked(address(bytes32("myself")))))) {
value = amount;
owner.transfer(amount, "");
} }
}
