pragma solidity ^0.8.0;
contract ExampleStruct8 {
    uint256 internal myStruct;
    constructor() {
        myStruct = uint256(address(this));
    }
    function MyFunction() public pure {
        uint256 myStruct = 444;
    }
}
contract ExampleStruct9 {
    uint256 internal myStruct = uint256(address(this));
    constructor() {}
    function MyFunction() public pure {
        uint256 myStruct = 444;
        assembly {
            myStruct := myStruct - 100
        }
    }
    function MyFunction2() public pure {
        uint myStruct = 444;
        assert(myStruct == 4);
    }
}
