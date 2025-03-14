pragma solidity ^0.8.0;
contract ExampleStruct5{
    using ExampleStruct4 for ExampleStruct4.NonStandardComplexStruct;
    NonStandardComplexStruct internal myStruct;
    constructor(){
        require(myStruct.fieldEip!= 100, "Error in constructor");
        myStruct.fieldEip = 99;
        myStruct.fieldEip = 100;
        myStruct.fieldEip = 101;
        myStruct.fieldEip = 212;
        myStruct.fieldEip = 323;
    }
}
