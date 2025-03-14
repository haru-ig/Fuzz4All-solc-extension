pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMemoryStorage {
    constructor() public {}
        function m() public {
        uint[] memory y;
        if (y.length > 0) {
        if (y[0] == 1) {
            x = 1;
        }
        if (y[0] == 2) {
            x = 2;
        }
    }
        }
}
contract SymbolicEquality_NestedArrayAndCalldataArray {
    constructor() public { x = [ 1, 2 ]; }
    uint[] x;
    function m() public view returns (uint[]) { return x; }
}
contract SymbolicEquality_NestedArrayAndDataLayout {
    constructor() public { x = [ 1, 2 ]; }
    uint[] x;
    function m() public view returns (uint[]) {
        return x;
    }
}
contract SymbolicEquality_TwoArraysNestedArray {
    constructor() public { x = [ 1, 2 ]; }
    uint[] x;
        function m() public view returns (uint[]) { return [ x, x ]; }
}
contract SymbolicEquality_TwoArraysDataLayout {
    constructor() public { x = [ 1, 2 ]; }
    uint[] x;
        function m() public view returns (uint[]) {
            return x;
        }
}
