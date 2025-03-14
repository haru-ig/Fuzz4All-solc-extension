pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentDynamicArary5 {
    uint[] internal x;
    constructor () public {
        x = [1];
        x[0] = 3;
    }
        function m() public view returns (uint[] memory) {
        return x;
    }
}

pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentDynamicArary6 {
    uint[] internal a;
    constructor () public {
        a = [0,1];
    }
        function m() public view returns (uint[] memory) {
        uint[] memory b = new uint[](a.length + 1);
        for (uint i = 0; i < a.length; i++){
            b[i] = a[i];
        }
        b[a.length] = 0xDEADFACA;
        return b;
    }
}
