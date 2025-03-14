pragma solidity ^0.8.0;
contract C {
    uint[] x;
    uint[] mem;
    event PUSH();
    event POP();
    constructor() public {
        x.push(0);
        mem.push(1);
    }
    receive() external payable {
    }
    function f(uint a) public {
        if (a == 0) { push(); x.pop(); push(); x.push(2*a); }
        if (a == 1) { pop(); mem.push(a); x.pop(); }
        else { push(); y(); x.push(a); }
        if (a == 0) { pop(); push(); }
        if (a >= 6) { push(); x.pop(); push(); x.push(a*a*a); pop(); pop(); pop(); }
        if (a < 10) { push(); x.pop(); push(); x.push(0xaa55); pop(); pop(); pop(); pop(); pop(); pop(); push(); }
        if (a >= 10) { push(); x.push(0xaa55); pop(); pop(); pop(); pop(); pop(); pop(); pop(); push(); push(); pop(); }
        if (a == 0) { push(); x.push(0xab40); pop(); pop(); pop(); pop(); pop(); pop(); pop(); pop(); push(); push(); push(); pop(); }
        if (a == 3) { push(); x.push(0xa550); pop(); pop(); pop(); pop(); pop(); pop(); pop(); pop(); push(); push(); push(); push(); }
        if (a >= 5) { push(); x.push(0xa540); pop(); pop(); pop(); pop(); pop(); pop(); pop(); pop(); push(); push(); push(); push(); }
        if (a == 5) { push(); x.push(0xaae0); pop(); pop(); pop(); pop(); pop(); pop(); pop(); pop(); push(); push(); push(); push(); push(); }
        if (a == 3) { push(); x.push(0x5400); pop(); pop(); pop(); pop(); pop(); pop(); pop(); pop(); push(); push(); pop(); push(); }
        if (a!= 3) { push(); y(); push(); x.push(0x5400); pop(); pop(); pop(); pop();
