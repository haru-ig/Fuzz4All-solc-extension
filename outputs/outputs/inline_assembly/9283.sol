pragma solidity ^0.8.0;
contract A {
    function setInputs( uint _a, uint _b ) public {
        num1 = _a;
        num2 = _b;
        r = num1 + num2 + num1 * num2;
    }
    function getOutputs( ) public returns (uint r2) {
        r2 = r;
    }
    uint num1;
    uint num2;
    uint r;
    string name;
}
