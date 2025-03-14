pragma solidity ^0.8.0;
interface IPaymentFallback {
    function payablePayment() public payable;
}
contract CallerReturnsNothing {
    function returnsNothing() returns ( bytes memory ) {
        return ( bytes ( ) );
    }
}
contract NonContractContract {
    contract MyContract {
        IFunctionWithFallbackReturnMutated myFallbackFunction = new IFunctionWithFallbackReturnMutated() ();

        function testCall() public {
            myFallbackFunction.callWithFallbackReturn ( abi.encode ( ) );
        }

        function withdrawEther() public payable {
            myFallbackFunction.callWithFallbackReturn ( abi.encode ( msg.value ) );
        }
    }
}
contract TestCallerFallback {
    function withdrawEtherAndPayable() public payable {
        IFunctionWithFallbackReturnMutated ( IFunctionWithFallbackReturnMutated( msg.sender ) ).callWithFallbackReturn ( abi.encode ( msg.value ), IPaymentFallback ( ) );
    }
}
contract TestCallerFallbackAndNotContract {
    function returnsNothingAndPayable() public returns ( bytes memory ) {
        return ( bytes ( ) );
    }
}
contract CallerReturnsError {
    function returnsError() public pure returns ( bytes memory ) {
        return ( bytes ( ) );
    }
}
