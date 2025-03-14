pragma solidity ^0.8.0;


contract Semantic0050 {
    function functionWithoutReturnType() public pure {
        return;
    }
    function functionWithInvalidReturnType() public pure returns (bool) {
        return;
    }
    function functionWithCorrectReturnType() public pure returns (bool) {
        return;
    }
    function functionWithDefaultParameter() public pure {
        functionWithoutReturnType();
    }
    function functionWithCustomParameter(bool _value) public pure {
        functionWithoutReturnType( 0, _value );
    }
    function functionWithoutReturnType(uint _a) public pure {
        if( true )
            functionWithoutReturnType( 1 );
        else
            functionWithoutReturnType( _a );
        if( true )
            return;
        else
            return;
    }
    function functionWithoutReturnType(uint _a, uint _b) public pure {
        _b = 0;
        functionWithoutReturnType(_a);
        if( true )
            return;
        else
            return;
    }
}
