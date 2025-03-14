pragma solidity ^0.8.0;
contract Example2{

uint constant initialx = 0;
uint constant initialy = 20;
function f() public returns (uint) {
uint z = initialx + 2 * initialy;
uint f = z + initialx + initialy + 42;
uint g = initialx + 42 + initialy + z;
uint h = f + g + 6;
uint i = g + h;
uint j = i >>> 1;
uint k = j % 2;
return h + j + i * k; } }
