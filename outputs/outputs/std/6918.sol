pragma solidity ^0.8.0;
contract Mutation_FunctionCaller18 {
    event FunctionCallerEvent();

    function functionCaller(uint a) public {
        FunctionCallerEvent();
    }
}

pragma solidity ^0.8.0;
contract Mutation_FunctionCaller24 {
    event FunctionCallerEvent();
    uint[] public arr1;
    uint[] public arr2;
    int() external {
        uint i;
        for (i = 0; i <= 1; i++) {
            functionCaller(());
        }
    }

    function functionCaller() public {
        FunctionCallerEvent();
        arr2[i + 1] += arr2[i];
    }
}
