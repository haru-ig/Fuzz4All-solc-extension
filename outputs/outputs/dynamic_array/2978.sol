pragma solidity ^0.8.0;
contract SymbolicEquality_AllocationNestedArary {
    uint[] x;
        constructor () public {
        x = new uint[](4);
        x[0] = 0;
        x.length = 5;
        x[1] = 1;
        x[0] = 2;
        x[1] = 3;
        x[1] = 4;
        x[1] = 5;
        x[1] = 6;
        x[1] = 7;
        x[1] = 8;
        x[1] = 9;
        x[1] = 10;
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
contract SymbolicEquality_InvalidUseOfDynamicMemory {
    uint[] x;
        constructor () public {
        x = new uint[](2);
        uint storageX = new uint[](2);
        uint storageXLength = new uint[](2);
        storageXLength[1] = 5;
        storageXLength[0] = 1;
        storageX[1] = 1;
        storageX[0] = new uint[](10);
        x[1] = 2;
        x[0] = 3;
        x[0] = 4;
        x[0] = 5;
        x[0] = 6;
        x[0] = 7;
        x[0] = 8;
        x[0] = 9;
        x[0] = 10;
        x[0] = new uint[](10);
        x = storageX;
        x.length = storageXLength;
        x.length = 5;
        x = storageX;
        x.length = 1;
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}
