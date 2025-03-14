pragma solidity ^0.8.0;
contract ExampleStruct3{
    struct NonStandardComplexStruct{
        uint256 fieldEip;
        uint256 fieldFep;
        uint256 fieldGep;
        uint256 fieldHEP;
    }
    NonStandardComplexStruct internal structVariables;
    constructor(){
        structVariables.fieldEip += 1 ;
        structVariables.fieldFep -= 2 ;
        structVariables.fieldGep *= 3;
        structVariables.fieldHEP /= 5;
    }
}
