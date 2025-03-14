pragma solidity ^0.8.0;
contract Bad {
function f(uint24 x) external {
uint y=((x==1)|(1<<1)|(0x10)|(0x10000)|(0x10000000));
}
}
