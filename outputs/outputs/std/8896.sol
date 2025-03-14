pragma solidity ^0.8.0;
contract ExampleStruct8{
    uint256 myStruct;
    uint16 internal myArray1;
    uint16 internal myArray2;
    constructor() {
        myArray1 = uint16(200);
        myArray2 = uint16(300);
    }
    function MyFunction() public pure {
        uint256 myStruct = 199;
    }
}
