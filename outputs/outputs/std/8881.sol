pragma solidity ^0.8.0;
contract ExampleStruct5 {
    struct NonStandardComplexStruct {
        uint256 fieldEip;
        uint256 fieldFep;
        uint256 fieldGep;
        uint256 fieldHEPM2;
    }
    uint256 internal myStruct;
    constructor() {
        myStruct = 99;
        myStruct = 100;
        myStruct = 101;
        myStruct = 222;
        myStruct.fep = 232;
    }
    function MyFunction() public pure{
        uint256 myStruct1 = 333;
        uint256 myStruct2 = 444;
    }
}
