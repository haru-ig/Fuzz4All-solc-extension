pragma solidity ^0.8.0;
contract Mutation_FunctionCaller2 {
    function setArray(uint[] memory _new_array) public {}
}

pragma solidity ^0.8.0;
contract Mutation_FunctionCaller1 {
    function modifyArray(uint[] memory _new_array) public {}
}
