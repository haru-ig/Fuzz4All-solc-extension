pragma solidity ^0.8.0;
contract ExampleStruct1{
    struct NonStandardSimpleStruct{
        uint8 fieldEip;
        uint8 fieldFep;
        uint8 fieldGep;
        uint8 fieldHEP;
       uint8 fieldHEP;
    }
    NonStandardSimpleStruct internal myStruct;
    constructor(){
        myStruct.fieldEip = 99;
        myStruct.fieldEip = 100;
        myStruct.fieldEip = 101;
        uint8 myFirstUint8 = uint8(0x33);
        uint8 mySecondUint8 = uint8(0x2A);
        uint8 myThirdUint8 = uint8(0x32);
        uint8 myFourthUint8 = uint8(0x4E);
        myStruct.fieldEip = myFirstUint8;
        myStruct.fieldEip = myFirstUint8;
        myStruct.fieldEip = myFirstUint8;
        myStruct.fieldEip = mySecondUint8;
        myStruct.fieldEip = myFirstUint8;
        myStruct.fieldEip = myThirdUint8;
        myStruct.fieldEip = myFourthUint8;
        myStruct.fieldEip = myThirdUint8;
        myStruct.fieldEip = myFourthUint8;
        myStruct.fieldEip = myFourthUint8;
    }
}
