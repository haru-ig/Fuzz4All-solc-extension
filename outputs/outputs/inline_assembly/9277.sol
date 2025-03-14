pragma solidity ^0.8.0;
contract A {
    uint constant MAX_INTEGER = 1e7;
    uint num1;
    uint num2;
    uint r;
    pragma optimize (O3);
    function setInputs( uint a, uint b ) public {
        num1 = a;
        num2 = b;
        r = num1 + num2 + num1 * num2;
    }
    function getOutputs( ) public returns ( uint r2 ) {
        r2 = r;
    }
}
