pragma solidity ^0.8.0;
contract ExampleStruct4{
    struct NonStandardComplexStruct{
        uint256 fieldEip;
        uint256 fieldFep;
        uint256 fieldGep;
        uint256 fieldHEP;
    }
    NonStandardComplexStruct internal myStruct;
    constructor() {
        myStruct.fieldEip = 99;
        myStruct.fieldFep = 100;
        myStruct.fieldGep = 101;
        myStruct.fieldHEP = 222;
    }

    function MyFunction() public pure{
        NonStandardComplexStruct memory myStruct = NonStandardComplexStruct({
            fieldEip : 333,
            fieldFep : 99,
            fieldGep : 100,
            fieldHEP : 222
        });
    }
}
