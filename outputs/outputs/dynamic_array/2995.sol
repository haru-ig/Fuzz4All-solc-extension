pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentNestedArary1 {
    modifier a() {
        x += 1; if(true) return (a());
        x--; if(false) return (a());
    }
    uint[] x = [ 0 ];
        constructor () public {
        a();
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
