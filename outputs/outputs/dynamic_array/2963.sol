pragma solidity ^0.8.0;
contract SymbolicEquality_StaticArray {
address [] x;
    function m() public view returns (address[] memory) {
        return x;
    }
}

pragma solidity ^0.8.0;
contract SymbolicEquality_DynamicArray {
    address[] x;
        constructor () public {
        x = [0, 98, 4];
    }
        function m() public view returns (address[] memory) {
        return x;
    }
}
contract SymbolicEquality_InvalidDynamicArraySize {
    address[] x;
        constructor () public {
        x.length();
        x.resize(2);
        x[0] = 0;
    }
        function m() public view returns (address[] memory) {
        return x;
    }
}

pragma solidity ^0.8.0;
contract SymbolicEquality_VariableDynamicArray {
    uint public k;
    address [] x;
        constructor (uint memory k) public {
        x = new address[](k);
        for (uint i = 0; i < k; i++) {
            x[i] = 0;
        }
    }
        function m() public view returns (address[][] memory) {
        return new address[][][](2);
    }
}

pragma solidity ^0.8.0;
contract SymbolicEquality_DynamicArrayOfDynamicArray {
    address[][][] x;
        function m() public view returns(address[][][] memory) {
        return new address[][][](3);
    }
}
contract SymbolicEquality_EmptyArray {
    address[] x;
    function m() public view returns (address[] memory) {
        return x;
    }
}
contract SymbolicEquality_InvalidDynamicArray {
    address[] x;
        constructor () public {
        x.length();
    }
        function m() public view returns (address[] memory) {
