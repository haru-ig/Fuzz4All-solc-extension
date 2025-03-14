pragma solidity ^0.8.0;
contract ExampleStruct3{
    struct NonStandardComplexStruct{
        uint256 fieldEip;
        uint256 fieldFep;
        uint256 fieldGep;
        uint256 fieldHEP;
    }
    NonStandardComplexStruct internal myStruct;
    constructor(uint256 a){
        myStruct.fieldEip = a;
    }
}

contract ExampleStruct2{
        bytes10;
        bytes10 public bytes3 = "abc";
        mapping(uint256 => uint256) public myMap;
        mapping(uint256 => [uint820]) public myArray;
        constructor(uint256 a){
            uint256 b = 1;
            bytes10 public b2 = "def";
            bytes10 private bp = "g";
        }
}
contract ExampleStruct1{
    struct NonStandardComplexStruct{
        uint256 fieldEip;
        uint256 fieldFep;
        uint256 fieldGep;
        uint256 fieldHEP;
    }
    NonStandardComplexStruct internal myStruct;
    constructor(){
        uint256 bytes3 = 5555555;
        uint256 bytes3 = 55555556;
        myStruct.fieldEip = bytes3;
        myStruct.fieldEip = 55;

    }
}
