pragma solidity ^0.8.0;
contract ExampleStruct4{
    struct NonStandardComplexStruct{
       uint256 fieldEip;
       uint256 fieldFep;
    }
    NonStandardComplexStruct internal myStruct;
    constructor(){
        (myStruct.fieldEip, myStruct.fieldFep) = (1, 2);
        (myStruct.fieldEip, myStruct.fieldFep) = (3, 4);
        (myStruct.fieldEip, myStruct.fieldFep) = (5, 6);
    }
}
