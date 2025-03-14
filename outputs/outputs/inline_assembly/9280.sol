pragma solidity ^0.8.0;
contract A {

    struct F {
        uint constant MAX_INTEGER = 2e9;
    }
    uint public num1;
    uint public num2;
    uint public r;
    function setInputs( uint _a, uint _b ) public {
        num1 = _a;
        num2 = _b;
    }
    function getOutputs( ) public returns( uint r2 ) {
        r2 = r;
    }
    function addInputs( uint _a, uint _b ) public {
        num1 = _a;
        num2 = _b;
    }
    function getOutputs( ) public returns( uint r3 ) {
        r3 = r;
    }
    function multiplyInputs( uint _a, uint _b ) public {
        num1 = _a;
        num2 = _b;
    }
    function reduceInputs( ) public returns( uint r4 ) {
        r4 = r;
    }
    function getOutputs( ) public returns( uint r5 ) {
        r5 = r;
    }
    function getOutputs( ) public returns( uint r6 ) {
        r6 = r;
    }
}

```
