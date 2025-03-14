pragma solidity ^0.8.0;
contract SymbolicalEquality_AssignmentNestedArary4 {
    uint8[] x;
    constructor () public {
        x[0] = 0;
    x[1] = 1;
    x[2] = 2;
    x[3] = 3;
        x = [1];
    x[0] = 0;
        x[1] = 1;
    x[2] = 2;
    x[3] = 3;
        x = [1];
    x[0] = 0;
    x[1] = 1;
    x[2] = 2;
    x[3] = 3;
        x[4] = 4;
    x[4] = 5;
    }
        function m() public {
        assert(x[4] == 5);
    }
}
