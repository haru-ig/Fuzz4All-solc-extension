pragma solidity ^0.8.0;
contract ExampleStruct5{
    struct EmptyStruct{
    }
    struct NonEmptyStruct{
        int256 x;
        uint256 y;
        uint256 z;
    }
    struct ArrayOfStructs {
        NonEmptyStruct[] arrays;
    }
    ArrayOfStructs internal arrays;
    constructor() {
        arrays.arrays = new NonEmptyStruct[](2);
        emptyStruct memory emptyStructVariable = EmptyStruct();
    }
    function MyFunction() public pure{
        ArrayOfStructs memory myStructArray = ArrayOfStructs({
            arrays : new NonEmptyStruct[](1)
        });
    }
}
