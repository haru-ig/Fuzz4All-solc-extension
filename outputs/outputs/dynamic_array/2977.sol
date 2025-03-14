pragma solidity ^0.8.0;
contract SymbolicEquality_DynamicArrayAllocation {
    uint[] x;
        constructor () public {
        x = new uint[](13000);
        x[10] = 99999;
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
contract SymbolicEquality_DynamicArrayRepacking {
    uint[] x;
        constructor () public {
        x = [ 0, 1, 2, 3, 4, 5 ];
        x.length = 5;
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
