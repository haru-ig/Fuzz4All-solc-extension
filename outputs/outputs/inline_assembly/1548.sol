pragma solidity ^0.8.0;
contract Mutant {
uint256 a;
uint256 x;
uint256 y;
uint256 a_;
uint256 xprev;
uint256 d;
uint256 a__;
uint256 xprev1;
uint256 c_init;
constructor (uint256 c, uint256 dx, uint256 d, uint256 x) public {
    a_ = 1 + c;
    xprev = x;
    a = msg.sender;
    x = 1 + dx + 2*d + xprev;;
    a_ = 1 - c;
    d = d;
    c_init = c;
    a_ = xprev1;      c_init = c;
}
function mutate (uint256 h) public {
    xprev = 0;
    c_init = y + h;
    xprev1 = 0;
    x = 1 + h0x2 + 1000 + h0x20 + xprev;
    xprev = x;
    a_ = h;
}
function increase_d (uint256 h) public {
    a_ = xprev1;
    d += h;
}
}
