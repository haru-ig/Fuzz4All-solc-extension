pragma solidity ^0.8.0;
contract Mutant1 {
uint256 x;
uint256 a_;
address a;
uint256 xprev;
uint256 t;
uint256 xprev1;
uint256 c;
constructor (uint256 h, uint256 x) public {
    xprev1 = 0;
    xprev = 0;
    x = 0 + h + 100+10*x + xprev;
    c = x + 1 + 100*t;
    a = msg.sender;
    a_ = t * 2;
}

function mutate (uint256 h) public returns (uint256) {
    xprev1 += h;
    xprev += 10 + 10*t;
    x = 1 + 100 + 10 + 10*d + xprev;
    c = c + h - 0.2;
    return x;
}
function increase_t (uint256 h) public {
    t+=h;
}
}
