pragma solidity ^0.8.0;
contract ExampleStruct{
    struct SimpleStruct{
        uint256 fieldA;
        uint256 fieldB;
    }
    SimpleStruct internal structVariables;
    constructor(uint256 fieldA_, uint256 fieldB_){
        structVariables.fieldA = fieldA_;
        structVariables.fieldB = fieldB_;
    }
}
