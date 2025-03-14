pragma solidity ^0.8.0;
contract ExampleStruct4{
    struct NonStandardComplexStruct{
        uint256 fieldEip;
        uint256 fieldFep;
        uint256 fieldGep;
        uint256 fieldHEP;
    }
    NonStandardComplexStruct internal myStruct;
    constructor(){
        myStruct.fieldEip = 99;
        myStruct.fieldEip = 100;
        myStruct.fieldEip = 101;
        myStruct.fieldEip = 222;
        myStruct.fieldEip = 333;
        myStruct.fieldEip = 333;
    }
}
