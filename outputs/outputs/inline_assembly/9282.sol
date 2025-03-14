pragma solidity ^0.8.0;
contract A {
    uint constant MAX_INTEGER = 1e7;
    uint num1;
    uint num2;
    uint r;
    function setInputs( uint _a, uint _b ) public {
        emit EmittedC( _a );
        require( num2 <= MAX_INTEGER, "You can't perform this operation." );
        num1 = _a;
        num2 = _b;
        r = num1 + num2 + num1 * num2;
    }
    uint constant EmittedC = 1234;
    function getOutputs( ) public returns( uint r2 ) {
        require( msg.sender == EmittedC, "Sender is wrong.", );
        r2 = r;
    }
}
