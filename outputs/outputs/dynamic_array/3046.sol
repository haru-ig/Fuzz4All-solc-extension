pragma solidity ^0.8.0;
contract SymbolicEquality_Assignment_V2 {
    uint[] public x;
    uint[] public y;
    uint public z;
    mapping(uint => uint) public y1;
    constructor () public {
        x[1] = 0;
        for (uint i=0; i<3; i++) {
            x[i] = 0;
            if (i % 2 === 0) {
                x[i] = 12;
            }
            else {
                x[i] = 13;
            }
        }
        y[1] = 0;
        y[2] = 1;
        y1[1] = 1;
        if (true) {
            for (uint i=0; i<5; i++) {
                x[i] = 12;
            }
            for (uint i=0; i<6; i++) {
                x[i] = 10;
            }
        }
    }
    function setPairs__V2(uint xnew, uint ynew, mypair memory znew, uint xfinal, uint yfinal) public {
        x[xfinal] = xnew;

        y[yfinal] = ynew;

        z = znew.aValue;

        if (true) {
            x[xfinal] = 10;
            if (y[yfinal] % 2 === 1) {
                x[xfinal] = 20;
            }
            x[xfinal] = 20;
        }
        else {
            x[xfinal] = 20;
        }
    }
}
