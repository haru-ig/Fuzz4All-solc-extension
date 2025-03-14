pragma solidity ^0.8.0;
contract SymbolicEquality_Assignment_Mutation {
    uint[] x;
        constructor () public {
        x = new uint[](6);
        x = x.mint(uint(1));
        x[5] = 5;
        x[9] = 9;
        x.mint(uint(0)).mint(uint(4));
        x.mint(uint(1)).mint(uint(3)).mint(uint(2));
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}

```
