pragma solidity ^0.8.0;
contract TestCaller2 {
    function withdrawEther() public payable {
        IFunctionWithFallbackMutated ( IFunctionWithFallbackMutated( msg.value ) ).callWithFallbackReturn ( abi.encode ( msg.sender ) );
    }
}
