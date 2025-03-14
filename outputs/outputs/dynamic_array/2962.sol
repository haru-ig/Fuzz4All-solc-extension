pragma solidity ^0.8.0;
contract SymbolicEquality_Mutation {
    uint[] x;
        constructor () public {
        x = new uint[](10);
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}

pragma solidity ^0.8.0;
contract SymbolicEquality_Assignment {
    uint[] x;
        constructor () public {
        x[0] = 0;
        x[4] = 4;
        x[5] = 5;
        x[9] = 9;
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
