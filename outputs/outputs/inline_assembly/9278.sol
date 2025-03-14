pragma solidity ^0.8.0;
contract A {
    uint constant MIN_INTEGER = -1e9;
    uint num2;
    uint num3;
    uint r;
    function setInputs( uint a, uint b ) public {
        num2 = a;
        num3 = b;
        r = num2 - num3 + num2 + num3;
    }
    function getOutputs( ) public returns ( uint r2 ) {
        r2 = r;
    }
}
