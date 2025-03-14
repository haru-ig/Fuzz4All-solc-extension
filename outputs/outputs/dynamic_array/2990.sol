pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentNestedArary {
    mapping(bytes32 => uint) x;
        constructor () public {
        x[0] = 0;
        x[0] = 0;
    }
        function m() public view returns (mapping(bytes32 => uint) memory) {
        return x[x[0]];
    }
}
