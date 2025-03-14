pragma solidity ^0.8.0;
contract ExampleStruct3{
    struct NonStandardComplexStruct{
        uint256 fieldEip;
        uint256 fieldFep;
        uint256 fieldGep;
        uint256 fieldHEP;
    }
    NonStandardComplexStruct internal myStruct;
    constructor(){
        myStruct.fieldEip = 1;
        myStruct.fieldEip = 2;
        myStruct.fieldEip = 3;
    }
}
