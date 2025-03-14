pragma solidity ^0.8.0;
contract SymbolicEquality_MutatedArrayWithModification {
    uint[] x;
        constructor () public {
        x = [0, 98, 4, 9, 0, 5];
    }
        function m() public view returns (uint[] memory) {
        x[145] = 0xffffff23;
        return x;
    }
}

pragma solidity ^0.8.0;
contract SymbolicEquality_MutatedFunction {
    uint[] x;
        constructor () public {
        x = [0, 98, 4, 9, 0, 5];
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
        function foo() public view returns (uint[] memory) {
        return x[2];
    }
}
