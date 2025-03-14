pragma solidity ^0.8.0;
contract A {
    uint constant MAX_INTEGER = 1e7;
    uint num1;
    uint num2;
    uint r;
    function setInputs( uint a, uint b ) public {
        num1 = a;
        num2 = b;
        r = num1 * num2;
    }
    function getOutputs( ) public returns ( uint r2 ) {
        r2 = r;
    }
}
contract A {
    uint x;
    function setIntInput( uint _x ) public {
        x = _x;
    }
    function getIntOutput( ) public returns ( uint _x ) {
        _x = x;
    }
}
contract Contract {
    function getMyInt( ) public returns ( uint x ) {

        x = 123;


        return x;
    }
}
