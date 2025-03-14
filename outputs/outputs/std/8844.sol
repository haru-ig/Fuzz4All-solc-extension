pragma solidity ^0.8.0;

contract ExampleStruct{
    struct SimpleStruct{
        uint256 fieldA;
        uint256 fieldB;
    }

    SimpleStruct internal structVariables;

    constructor(){
        structVariables.fieldA = structVariables.fieldB = structVariables.fieldA + 1;
    }
}
