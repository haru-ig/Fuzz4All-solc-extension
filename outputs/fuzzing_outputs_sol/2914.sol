pragma solidity ^0.8.0;
contract C is Bar {

    receive() external payable {}
    fallback () external payable {}
}
contract FallbackCaller {
    struct CallError {
        uint errorCode;
        uint stackDepth;


        string errorMessage;
    }
    CallError memory _callError;

    fallback () external payable {


        CallError memory tmpCallError = C.call.value(address(this))(abi.encodeWithSignature("", 0));
        _callError = tmpCallError;

        if(tmpCallError.errorCode == 0) {
            revert() ;
        }


        revert("Fallback function not executed") ;
    }
}
