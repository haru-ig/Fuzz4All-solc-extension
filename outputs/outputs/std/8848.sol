pragma solidity ^0.8.0;
contract ExampleStruct2{
    struct NonStandardComplexStruct{
        uint256 fieldEip;
        uint256 fieldFep;
        uint256 fieldGep;
        uint256 fieldHEP;
    }
    NonStandardComplexStruct internal structVariables;
    constructor(){
        NonStandardComplexStruct memory complexStruct = NonStandardComplexStruct(6, 4, 2, 8);
        structVariables.fieldEip = complexStruct.fieldEip;
        structVariables.fieldFep = complexStruct.fieldFep;
        structVariables.fieldGep = complexStruct.fieldGep;
        structVariables.fieldHEP = complexStruct.fieldHEP;
    }
}
