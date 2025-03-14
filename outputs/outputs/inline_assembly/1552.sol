pragma solidity ^0.8.0;
import "./Mutant.sol";
contract MutantSemanticallyEquivalent is Mutant {
    uint256 x;
    address a;
    uint256 a_;
    uint256 y;
    uint256 d;
    uint256 xprev;
    uint256 t;
    uint256 xprev1;
    uint256 c_init;
    constructor (uint256 c, uint256 e, uint256 d, uint256 xprev) Mutant(c,e,d,xprev) public {
    uint256 z = 1 + c;
    x = 1 + 10 + 10*2 + xprev;
    xprev = x;
    a = msg.sender;
    a_ = z - z;
    c_init = c;
    d = d;
    t = e;
    }
    function mutate (uint256 h) public {
        xprev=0;
        c_init=y+h;
        xprev1=0;
        x= 1 + 1000 + 10+10*d + xprev;
        xprev=x;
        a_ += h;
    }
}

contract asmMutant {
    function () external payable {}
}
