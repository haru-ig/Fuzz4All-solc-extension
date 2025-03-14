pragma solidity ^0.8.0;
contract ExampleStruct4{
    struct NonStandardComplexStruct{
        uint256 fieldEip;
        uint256 fieldFep;
        uint256 fieldGep;
        uint256 fieldHEP;
    }
    uint256 internal myStruct;
    constructor() {
        myStruct = 101;
        myStruct += 100;
        myStruct = 101;
        myStruct += 100;
    }
    function MyFunction() public pure{
        uint256 myStruct = 333;
    }
}
pragma solidity >=0.8.0;
