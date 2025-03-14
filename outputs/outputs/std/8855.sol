pragma solidity ^0.8.0;
contract ExampleStruct4{
    struct FieldStruct{
        uint256 fieldEip;
        uint256 fieldFep;
        uint256 fieldGep;
        uint256 fieldHEP;
    }
    FieldStruct internal myStruct;
    constructor(uint256 _value1, uint256 _value2, uint256 _value3){
        myStruct.fieldEip = _value1;
        myStruct.fieldFep = _value2;
        myStruct.fieldGep = _value3;
    }
}
