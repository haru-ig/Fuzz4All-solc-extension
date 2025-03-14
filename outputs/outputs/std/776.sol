pragma solidity ^0.8.0;
library Mutant {
function mutant(uint n) public view returns(uint) {
if (n < 2) {
return 2;
}
else {
return 3;
}
}
}

pragma solidity ^0.8.0;
contract Mutant {
mapping (address => uint) private balances;
function mutant() public view returns(uint) {
return balances[msg.sender];
}
function mutant(address a) public view returns(uint) {
return balances[a];
}
function mutant(uint[] memory b) public view returns(uint) {
return balances[b];
}
function mutant(uint[] storage c) public view returns(uint) {
return balances[c];
}
function mutant(uint[] calldata d) public view returns(uint) {
return balances[d];
}
function mutant(uint[] storage d) public view returns(uint) {
return balances[d];
}
function mutant(uint[] memory d) public view returns(uint) {
return balances[d];
}
function mutant(uint a, uint[] memory b) public view returns(uint) {
return a + b[0];
}
function mutant(uint a, uint[] calldata b) public view returns(uint) {
return a + b[0];
}
function mutant(uint a, uint[] storage b) public view returns(uint) {
return a + b[0];
}
function mutant(uint a, uint[] calldata b) public view returns(uint) {
return a + b[0];
}
function mutant(uint a, uint[] storage b) public view returns(uint) {
return a + b[0];
}
function mutant(uint a, uint[] memory b) public view returns(uint) {
return a + b[0];
}
function mutant(uint[] memory a, uint[] memory b) public view returns(uint) {
return a[0] + b[0];
}
function mutant(uint[] memory a, uint[] calldata b) public view returns(uint) {
return a[0] + b[0];
}
function mutant(uint[] memory a, uint[] storage b) public view returns(uint) {
return a[0] + b[0];
}
function mutant(uint[] memory a, uint[] calldata b) public view returns(uint) {
return a[0] + b[0];
}
function mutant(uint[] memory a, uint[] storage b) public view returns(uint) {
return a[0] + b[0];
}
function mutant(uint[] memory a, uint[] memory b) public view returns(uint) {
return a[0] + b[0];
}
function mutant(uint[] calldata a, uint[] memory b) public
