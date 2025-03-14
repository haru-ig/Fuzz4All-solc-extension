pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentNestedArary {
    uint[] x;
        constructor () public {
        x = [ 0 ];
    x[1] = 3;
    x.push(2);
    x[2] = 0x00;
    x.push(3);
    x[3] = 0xfffffffffff;
    }
        function m() public view returns (uint[] memory) {
        x.push(5);
    x[1] = 0x0ffffff;
    return x;
    }
}
