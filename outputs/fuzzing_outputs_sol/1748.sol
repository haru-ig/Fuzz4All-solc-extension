pragma solidity ^0.8.0;
interface IFunctionWithFallbackNonMutated {
    function callWithFallback ( bytes calldata ) external payable;
}
contract TestCallerMod {
    function withdrawEther() public payable {
        IFunctionWithFallbackNonMutated ( IFunctionWithFallbackNonMutated( msg.sender ) ).callWithFallback ( abi.encode ( msg.value ) );
    }
}
