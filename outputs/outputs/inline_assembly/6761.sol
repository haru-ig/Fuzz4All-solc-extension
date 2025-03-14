pragma solidity ^0.8.0;
contract MixedContactsExample506 {
    uint8 g;
    constructor() {
        g = 2;
    }
    function test6() public {
        this.anotherOperation6();
    }
    function anotherOperation6() public {
        this.anotherOperation5();
    }
}
