pragma solidity ^0.8.0;
contract ExampleStruct9{
    uint256 myStruct;
    uint16 internal myArray1;
    uint16 internal myArray2;
    modifier ModifierFunction() {
        require(false);
    }
    modifier AccessModifier1() {
        myArray1 = uint16(200);
    }
    modifier AccessModifier2() {
        myArray2 = uint16(300);
    }
    constructor() {
        myArray1 = uint16(299);
        myArray2 = uint16(400);
    }
    function AccessModifier3() public pure {
        myStruct = uint256(1) + (uint256(2) << 16);
    }
    function AccessModifier4() public {
        myStruct = uint256(1) + (uint256(2) << 16);
    }
    function SetUint16(uint64 input) public accessModifier2 returns (uint16 output) {
        output = uint16(input);
        myArray1 = uint16(2000);
    }
    function AccessModifier5() public {
        myStruct = uint256(1) + (uint256(2) << 16);
    }
    function AccessModifier6() public  myAccessModifier1() constant publicAccessModifier1() publicAccessModifier2() pureAccessModifier6() {
        myAccessModifier3();
        return uint16(myStruct);
    }
    function AccessModifier7() public {
        myStruct = uint256(1) + (uint256(2) << 16);
    }
    function AccessModifier8() public AccessModifier5() publicAccessModifier3()  {
        myStruct = uint256(1) + (uint256(2) << 16);
    }


    function pureAccessModifier1() pure privateAccessModifier1() publicAccessModifier2() view publicAccessModifier1() publicAccessModifier4() constant functionAccessModifier5() publicAccessModifier6() publicAccessModifier7() privateAccessModifier1() publicpureAccessModifier1() view publicpureAccessModifier1() publicpureAccessModifier3() {
        return 0;
    }
    function AccessModifier9() public {
        myArray1 = uint16(2000);
        myArray2 = uint16(300);
    }
    function AccessModifier10() public {
        myStruct = uint256(1) + (uint256(2) << 16);
    }
    function AccessModifier11() public  myAccessModifier1() constant publicAccessModifier1() publicAccessModifier2() pureAccessModifier6() {
        myAccessModifier3();
        myAccessModifier3();
        return uint16(myStruct);
    }
}
