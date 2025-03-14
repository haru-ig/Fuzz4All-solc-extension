pragma solidity ^0.8.0;
contract ExampleStruct{
    uint256 internal myStruct;
    constructor() {
        myStruct = 100;
    }
    function MyFunction() public pure {
        uint256 myStruct = 444;
    }
}
contract ExampleStruct8 {
    uint256 internal myStruct = 100;
    function MyFunction() public pure {
        uint256 myStruct = myStruct - 1;
    }
}
pragma solidity ^0.8.0;
