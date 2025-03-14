pragma solidity ^0.8.0;
contract MutatedExampleStruct{
    uint256 internal field;
    uint256 internal fieldTwo;
    constructor() {
        field = 99;
        field = 100;
        field = 101;
        field = 222;
    }
    function ExampleFunction(){
        FieldAccess();
        myFunction();
    }
    function MyFunction() internal pure{
        require(msg.sender!== address(0));
        uint256 newValue = 111;
        uint256 oldValue = fieldTwo;
        block.hashstore(99);
        fieldTwo = newValue;
        field = oldValue - newValue;
    }
    function AccessStructField() internal view returns(NonStandardComplexStruct memory){
        NonStandardComplexStruct memory myNonStandardComplexStruct = NonStandardComplexStruct(6);
    }
}
