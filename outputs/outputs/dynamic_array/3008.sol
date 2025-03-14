pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentDynamicArary4 {
    uint[] internal x;
    constructor () public {
        for(uint i = 0; i < 2; i++) {
        x = [3];
            x.push(5);
        x = x;
            x.push(7);
        x = x;
}
        }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
