pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentNestedArary4 is SymbolicEquality_AssignmentNestedArary3 {

    uint[] private p;

    function () public payable {
        p[1] = 123 * 2;
        p.push(375);
        p[0] = 199938;
        }
}
