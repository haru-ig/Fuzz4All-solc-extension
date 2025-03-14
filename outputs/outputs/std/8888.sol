pragma solidity ^0.8.0;
contract ExampleStruct1{
    uint256 internal myStruct;
    constructor() {
        myStruct = 99;
    }
    function MyFunction() public pure{
        uint256 myStruct = 44;
    }
}
