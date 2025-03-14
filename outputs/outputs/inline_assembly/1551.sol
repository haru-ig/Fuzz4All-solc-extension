pragma solidity ^0.8.0;
contract MutantGenesis {
uint256 x;
address a;
uint256 a_;
uint256 y;
uint256 d;
uint256 xprev;
uint256 t;
uint256 xprev_init;
uint256 c_init;
constructor (uint256 c, uint256 e, uint256 d, uint256 xprev) public {
    c_init = c;
    t = e;
    xprev_init = xprev;
    d = d;
    x = 1;
    y = 1 + c;
    xprev = x;
    a = msg.sender;
    a_ = y - y;
}
function mutate (uint256 h) public {
    xprev=x;
    x=0;
    xprev1=0;
    xprev = x;
    c_init=c+h;
    d = d+h;
    y = 1 + c + h;
    a = msg.sender;
    a_ = c + h + 1;
    t += h/20;
}
function increase_d (uint256 h) public {
    t += h/h*20;
    d += h;
}
}
