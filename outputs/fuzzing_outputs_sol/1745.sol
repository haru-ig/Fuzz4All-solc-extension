pragma solidity ^0.8.0;



contract Caller {
    bytes32 public constant FALLBACK_DATA_ADDRESS_VAR = 0x12;
    bytes32 public constant SUCCESS_DATA_ADDRESS_VAR = 0x13;

    function callByAddr ( string calldata funcAddr ) external payable {
        bytes memory result = abi.encode ( iFunctionByAddr ( IBase ( msg.sender ), funcAddr ) );
        delete bytes4 result;
        msg.sender.call ( result );
    }
    function callByVar ( string calldata funcVar ) external payable {
        bytes memory result = abi.encode ( iFunctionByVar ( IBase ( msg.sender ), funcVar ) );
        delete bytes4 result;
        msg.sender.call ( result );
    }
    IFunctionByAddr iFunctionByAddr ( IBase internal base, string calldata funcAddr ) internal pure returns ( bytes memory) {
        if ( funcAddr == "function1" ) {

            return function1.callWithFallbackReturn ( abi.encode ( msg.value ) );
        } else if ( funcAddr == "function2" ) {
            return function2.callWithFallbackReturn ( abi.encode ( msg.value ) );
        } else {
            revert ();
        }
    }
    IFunctionWithFallbackMutated iFunctionWithFallbackMutated ( bytes calldata data ) internal pure returns ( bytes ) {
        IFunctionWithFallback mutated = new (IFunctionWithFallbackMutated);
        mutated.function2.callWithFallbackReturn ( abi.encode ( data ) );
        return abi.encode ( data );
    }
    function function1( bytes calldata ) public payable returns ( bytes32 ) {
        return SUCCESS_DATA_ADDRESS_VAR;
    }
    function function2( bytes32 ) external payable returns ( bytes32 ) {
        this.require ( msg.value == address( this ) );
        return SUCCESS_DATA_ADDRESS_VAR;
    }
    function this.require ( bool x ) internal {
        if ( x ) revert ();
    }
}
interface IBase {
    function msgSender() external view returns ( address );
}
contract Test042 {
    function test042() view returns ( bytes memory )
