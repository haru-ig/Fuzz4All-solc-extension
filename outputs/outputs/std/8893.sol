pragma solidity ^0.8.0;
contract ExampleStruct6{
    uint256 internal myStruct;
    constructor() {
        myStruct = 199;
    }
    function MyFunction() public pure {
        uint256 myStruct = 444;
    }
}

pragma solidity ^0.8.0;
contract ExampleStruct7{
    uint256 internal myStruct;
    constructor() {
        myStruct = 199;
        myStruct = myStruct + 1;
    }
    function MyFunction() public pure {
        uint256 myStruct = 444;
    }
}
