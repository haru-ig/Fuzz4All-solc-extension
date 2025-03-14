pragma solidity ^0.8.0;
contract ExampleStruct{
    SimpleStruct internal structVariables;
    constructor(){
        structVariables.fieldA = structVariables.fieldB = structVariables.fieldA + 1;
    }
}
