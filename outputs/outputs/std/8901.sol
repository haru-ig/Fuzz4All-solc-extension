pragma solidity ^0.8.0;
contract MutatedStruct8{
    uint16 internal myArray1;
    uint256 myStruct;
    uint256 internal myArray2;
    constructor() {
        myStruct = 199;
        myArray1 = uint16(200);
        myArray2 = uint256(299);
    }
    function MyFunction() public pure {
        myStruct = uint256(myStruct ^ uint256(267));
        myArray2 = uint256(myArray2 ^ 595);
        myArray1 = uint256(myArray1 ^ 843);
    }
    function MutatedStruct2() public pure {
        ExampleStruct4 memory exampleStruct4_in = ExampleStruct4(660, 299);
        uint16 internal myStruct = myStruct + 590;
        uint16 myStruct = 450;
        myStruct = myStruct + 710;
        myArray1 = 890;
        myStruct = uint16(myStruct + myStruct);
        uint256 internal myArray1 = myArray1 * myArray1;
    }
    function MutatedArray1() public pure {
        uint16 internal myArray1 = myArray1 + 265;
        uint16 internal myArray2 = myArray2 + 450;
        uint16[4] memory myArray2;
        uint16[2] memory myArray_0;
        myStruct = 290;
        myArray2 = [267, 851, 226, 36];
    }
    function MutatedArray2() public pure {
        uint16 internal myArray1 = myArray1 + 780;
        uint16[3] memory myArray2;
        myStruct = myStruct + 805;
        uint16 internal myArray1 = myArray1 + 510;
    }
}
