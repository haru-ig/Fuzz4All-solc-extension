pragma solidity ^0.8.0;
contract O {
    uint public x;
    struct Q { uint s; uint t; }
    event xchange(Q[42] q);
    function y(uint x) external returns (uint[]) {
        Q[42] memory q;
        q.s = x;
        q.t = 42;
        q[1] = 0;
        q._qlength = 2;
        q._q0 = 2;
        return new uint[](3);
    }
}
