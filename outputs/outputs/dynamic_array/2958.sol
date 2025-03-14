pragma solidity ^0.8.0;
contract SymbolicEquality_MutableArray {
    uint[] x;
    constructor () public {
        x.push(0);
        x[0] = 98;
        x.push(4);
        x[0] = 9;
        x.push(5);
    }
        function s() public view returns (uint[] memory) {
        return x;
    }
}
