pragma solidity ^0.8.0;
contract ExampleStruct{
    struct SimpleStruct{
        uint256 fieldA;
        uint256 fieldB;
    }
    mapping(uint256 => address) private a;
    mapping(uint256 => SimpleStruct) private structs;
    mapping(uint256 => bytes32) private bytes32s;
    SimpleStruct internal structVariables;
    constructor(){
        uint256[] memory x = [structVariables.fieldA];
        if(structVariables.fieldB >= 1){
            x[0] = x[0] + 1;
        }
    }
}
