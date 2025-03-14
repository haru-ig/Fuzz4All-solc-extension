pragma solidity ^0.8.0;
interface IFunctionWithFallbackArguments {
    function callWithFallbackArguments ( bytes calldata ) external payable ;
}
contract TestCaller {
    function transferWithFallback() public payable {
        IFunctionWithFallbackArguments ( IFunctionWithFallbackArguments( msg.sender ) ).callWithFallbackArguments ( abi.encode ( msg.value ) );
    }
}
