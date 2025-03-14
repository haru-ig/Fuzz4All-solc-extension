pragma solidity ^0.8.0;
contract ExampleStruct8{
    uint256 internal myStruct;
    constructor(uint x) {
        if (1) {
            myStruct = 199;
        } else {
            myStruct = 444;
        }
    }
    function MyFunction() public pure {
        uint256 myStruct = 444;
    }
}
