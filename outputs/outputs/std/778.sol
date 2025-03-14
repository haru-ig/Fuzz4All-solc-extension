pragma solidity ^0.8.0;
contract Mutant {
function mutant() public pure returns(uint) {
if (true) {
return 2;
}
else {
return 3;
}
}
}

pragma solidity >=0.6.0 <0.9.0;
contract Mutant {
function mutant() public pure returns(uint) {
if (true) {
return 2;
}
else {
return 3;
}
}
}

pragma solidity >=0.6.0 <0.9.0;
contract Mutant {
function mutant() public pure returns(uint) {

require(true);
return 3;
}
function goodbye() public pure returns(bool) {

require(true);
uint x = mutant();
if (x == 2) {
return false;
}
else {
return true;
}
}
}
contract Mutant {
uint x;
function mutant() public pure returns(uint) {

require(true);
x = 3;
return 2;
}
function goodbye() public pure returns(bool) {

require(true);
if (x == 3) {
return false;
}
else {
return true;
}
}
}
