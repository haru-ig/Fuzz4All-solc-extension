pragma solidity ^0.8.0;
contract NamelessCaller {
    bytes public memoryData;
    constructor() {
        memoryData = "This example doesn't have the `fallback' function";
    }
    function example1() public {
        memoryData = "This example doesn't have the `fallback' function";
    }
    function example2() public {
        memoryData = "This example doesn't have the `fallback' function";
    }
}
