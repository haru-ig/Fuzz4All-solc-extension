pragma solidity ^0.8.0;
contract ExampleStruct2 is ExampleStruct4{
    struct NonStandardComplexStruct {
        uint256 fieldEip;
        uint256 x;
    }

    constructor () {
        x = 234;
    }

    modifier nonStandardModifier(uint fieldEip) {
        if(fieldEip < 100) {
        revert('EIP must be greater than or equal to 100');
        }

        _;
    }

    function myModifier(uint256 fieldEip) public nonStandardModifier(fieldEip) {
        myStruct.fieldEip = fieldEip;
    }
}
