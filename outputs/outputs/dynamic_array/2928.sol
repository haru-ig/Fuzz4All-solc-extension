pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutationsEvidenced {
    function f() public pure {
        bool[] memory l = new bool[](1);
        bool[] memory h = new bool[](1);
        h[0] = l[1];
        uint x, y;
        x = l[0]; y = l[1];
        a:
        require(x == y);
    }
}
