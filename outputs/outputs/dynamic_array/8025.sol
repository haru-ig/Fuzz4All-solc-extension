pragma solidity ^0.8.0;
contract Test48Semant {
    uint[2] public x;
    uint[3] public y;
    uint[2] y2;
    constructor() public {
        for (uint i = 0; i < x.length; i++) {
            x[i] += 1;
        }
    }
    function foo() public {
        for (uint i = 0; i < y.length; i++) {
            if (++y[i] == 10) {
                if (++y2[0] == 20) {
                    x[0] += x[i];
                }
            }
        }
    }
}
