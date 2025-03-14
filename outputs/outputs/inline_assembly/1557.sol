pragma solidity ^0.8.0;
contract Mutant {
uint256 x;
address a;
uint256 e;
uint256 t;
uint256 c_init;
uint256 d;
uint256 xprev;
constructor (uint256 c, uint256 e, uint256 d, uint256 xprev) public {
    c_init = c;
    d = d;
    t = e;
    x = 1 + xprev;
    xprev = x;
    a = msg.sender;
    e = 10%10 + 6;
}
function mutate (uint256 h) public {
    c_init=t;
    x=x+h;
    xprev=x;
}
function increase_d (uint256 h) public {
    d+=h;
}
}
