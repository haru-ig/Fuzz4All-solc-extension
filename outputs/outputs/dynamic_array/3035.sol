pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentDynamicAraryModulation {
    uint[] public x;
    mapping(uint => uint) public y;
    constructor () public {
        var i;
        for (i = 0; i < 10; i++) {
            x.push(i);
        }
        for (i = 0; i < 10; i++) {
            x[i+1] = x[i+1];
            x[i+1] += x[i];
        }
        x[2] = x[1];
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
