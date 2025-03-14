pragma solidity ^0.8.0;
contract Mutator { constructor() {
} function test() public pure {
uint arrayvar[4];
uint arrayvar_[10];

arrayvar_[4] = arrayvar_;
} function test2() public pure {
uint arrayvar[4];

arrayvar[0] = 1;
arrayvar[1] = 2;
arrayvar[2] = 3;
arrayvar[3] = 4;
uint arrayvar_[4];
arrayvar_[1] = 5;
arrayvar_[2] = 6;
arrayvar_[3] = 7;
arrayvar[4] = 8;

for (uint i=1;i!=2;i++) {
uint[] memory array3var;
array3var.push(10);
array3var.push(20);
array3var.push(30);
array3var.push(40);
arrayvar[i] = random52();
}
random52();








for (uint i=0;i!=1;i++) {
arrayvar(5) = 10;
}
for (uint i=0;i!=1;i++) {
uint var;
var = arrayvar(5);
if (var!=10) revert("Array Mutator Test 1");
arrayvar_[4][i] = random32();
for (uint j=0;j!=i;j++) {
uint k;
if (arrayvar[j]!=arrayvar_[4][j]) revert("Array Mutator Test 2");
k = random32();
arrayvar[j] = random32();
if (arrayvar[j]!=2*k) revert("Array Mutator Test 3 ");
arrayvar.push(1);
}
}
for (uint i=0;i!=2;i++) {
arrayvar[i] = 1;
}
for (uint i=0;i!=
