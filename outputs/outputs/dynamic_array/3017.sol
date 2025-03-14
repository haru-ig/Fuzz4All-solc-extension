pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentDynamicArary {
    uint[] public x;
    uint immutable p;
    constructor () public {
        x = new uint[](2);
        x.push(p);
        x[1] = p;
        x.push(p);
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
