pragma solidity ^0.8.0;
uint8 i;
uint256 j;
uint32 x;
uint64 y;
uint72 z;
uint128 ab;
string f;
constructor(){
    f = "Hello World";
}
fallback() external {
    i = 5;
    j = x + 5;
    x = x + 100;
    y = y + j;
    z = 2 ** 199;
    ab = 30;
}
