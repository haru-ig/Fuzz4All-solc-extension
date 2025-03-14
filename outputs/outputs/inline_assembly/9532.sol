pragma solidity ^0.8.0;
contract NonCallableNonVoidFunction {
    uint private uintValue;
    uint public uintValue32;
    bytes public myBytes;
    constructor() {
        uintValue = 10;
        uintValue32 = 20;
        bytes memory tmp = "test".bytes;
        myBytes = tmp;
    }
    function myContract() external {
        revert("contract function is called");
    }
    function nonCallableNonVoidFunction() external pure {
        uintValue32 = uintValue;
    }
}
contract MyFunction {
    uint public someValue = 10;
    constructor() {
        uintValue32 = 20;
    }
    function myContract() public {
        revert("contract function is called");
    }
    function myFunction() public pure {
        uintValue32 = uintValue;
    }
}
