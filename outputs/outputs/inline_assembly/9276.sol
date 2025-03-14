pragma solidity ^0.8.0;
contract A {
    uint constant MAX_INTEGER = 1e7;
    uint num1;
    uint num2;
    uint r;
    uint[] memory data;
    event event1 ( uint a, uint b );
    constructor(uint a, uint b) {
        num1 = a;
        num2 = b;
        r = num1 + num2 + num1 * num2;
        data.push(r);
    }
    function setInputs( uint a, uint b ) public {
        num1 = a;
        num2 = b;
        r = num1 + num2 + num1 * num2;
    }
    function getOutputs( ) public returns ( uint ) {
        return r;
    }
    modifier emitEvent {
        emit event1( num1, num2 );
        _;
    }
    function emitEvent2( uint a, uint b ) public view emitEvent {
        emit event1( a, b );
    }
}
