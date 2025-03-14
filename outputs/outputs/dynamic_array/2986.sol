pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentNestedArary {
    bytes32[] x;
        constructor () public {
        x = [ 0 ];
        x = [ 0x303234 ];
        x = [ 0x303234, 0x303030 ];
        x = [ 0x303234, 0x303030, 0x303030 ];
    }
        function m() public view returns (bytes32[] memory) {
        return x;
    }
}
