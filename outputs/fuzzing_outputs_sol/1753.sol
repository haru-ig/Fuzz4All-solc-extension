pragma solidity ^0.8.0;
library LibFallbackValueWriter {
    function getValue () public pure returns (bytes32) {
        return keccak256 ( "Fallback Value" ).toHexString ();
    }
}
contract TestLib {
    function testLib( bytes32 x ) external view returns (bytes32) {
        LibFallbackValueWriter x2 = LibFallbackValueWriter();
        return LibFallbackValueWriter.getValue();
    }
}
contract FunctionWithFallbackReturn {
    function payByFunc ( bytes32 x ) public returns ( bytes32 ) {
        return x;
    }
}
contract CallWithFallbackReturn {
    function recvByFunc ( bytes32 x ) public returns ( bytes32 ) {
        return x;
    }
}
contract FunctionWithFallbackReturnMutated {
    string  private _result;
    function setResult ( bytes32 x ) public {
        _result = x.toHexString ();
    }
    function _call () public view returns (bytes32 ){
        IFunctionWithFallbackReturnMutated ( IFunctionWithFallbackReturnMutated( this ) ).setResult ( _result );
        return recvByFunc ( _result );
    }
}
contract TestFunction {
    function executeFunctionWithFallback( bytes32 x ) public {
        IFunctionWithFallbackReturnMutated ( IFunctionWithFallbackReturnMutated( this ) ).setResult ( payByFunc( x ) );
        revert();
    }
}
contract TestFunctionMutated {
    function testlibExecuteFunctionInReturn( bytes32 x) public returns (bytes32) {
        IFunctionWithFallbackReturnMutated (TestFunctionMutated(this)).setResult ( _call ( x ) );
        return _result;
    }
    function _call ( bytes32 x ) public {
        ReentrancyGuard.assertNotReentrant ( msg.sender );
        revert();
    }
}
contract CallFunctionFallback {
    function sendEther() public returns (bytes32) {
        IFunctionWithFallbackReturnMutated ( IFunctionWithFallbackReturnMutated( msg.sender ) ).setResult ( ReentrancyGuard.nonRetriableFallback ( address ( functionWithFallbackReturn ) ));
        return _result;
    }
    function functionWithFallbackReturn() public pure returns (bytes32) {
        return LibFallbackValueWriter.getValue();
    }
}
