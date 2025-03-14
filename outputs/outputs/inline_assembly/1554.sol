pragma solidity ^0.8.0;
contract Mutant {
uint256 x;
address a;
uint256 a_;
uint256 y;
uint256 d;
uint256 xprev;
uint256 t;
uint256 xprev1;
uint256 c_init;
constructor (uint256 c, uint256 e, uint256 d, uint256 xprev) public {
    y = 1 + c;
    x = 1 + 10 + 10*2 + xprev;
    xprev = x;
    a = msg.sender;
    a_ = y - y;
    c_init = c;
    d = d;
    t = e;
}
function mutate (uint256 h) public {
    xprev=0;
    c_init=y+(d+h);
    xprev1=0;
    x= 1 + 1000 + 10+10*d + xprev;
    xprev=x;
    a_ = h;
}
function increase_d (uint256 h) public {
    if (d+c*y + h <=12000) {
        d+=h;
    } else {
        d=0;
        a_ = 20000 - d;
    }
}
function restore_d () public {
    d = c_init+1;
    a_ = 1;
}
}
