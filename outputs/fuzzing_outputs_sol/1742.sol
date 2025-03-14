pragma solidity ^0.8.0;
contract TestCaller {
    function withdrawEther() public payable {
        IFunctionWithFallbackMutated ( IFunctionWithFallbackMutated( msg.sender ) ).callWithFallbackReturn ( msg.value );
    }
}
