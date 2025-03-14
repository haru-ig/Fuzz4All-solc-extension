pragma solidity ^0.8.0;
contract MutatedWithNew2 {
    constructor() {
        MutatedWithNew myvar = MutatedWithNew();
    }
    function testPrevious() public returns (bytes[100] memory) {
        MutatedWithNew myvar = MutatedWithNew();
    }
}
