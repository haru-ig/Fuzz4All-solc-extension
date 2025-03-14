pragma solidity ^0.8.0;
contract A {
    uint public constant MAX_INTEGER = 1e7;
    uint public constant r;
    uint public constant num1;
    uint public constant num2;
    constructor() {
        r = num1 + num2 + num1 * num2;
    }
    function setInputs( uint _a, uint _b ) public {
        num1 = _a;
        num2 = _b;
        r = num1 + num2 + num1 * num2;
    }
    function getOutputs( ) public returns( uint r2 ) {
        r2 = r;
    }
}
