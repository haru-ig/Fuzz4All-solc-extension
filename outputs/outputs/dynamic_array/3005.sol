pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentDynamicArary4 {
    uint[] internal x;
    constructor () public {
        x = [1];
        x.push(2);
        x.push(3);
        x.push(2);
        x.push(5);
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
