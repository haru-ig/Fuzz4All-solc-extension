pragma solidity ^0.8.0;
interface IFunctionWithFallbackMutated {
    function callWithFallbackReturn ( bytes calldata ) external payable returns (bytes memory);
}
contract TestCaller {
    function withdrawEther() public payable {
        IFunctionWithFallbackMutated ( IFunctionWithFallbackMutated( msg.sender ) ).callWithFallbackReturn ( abi.encode ( msg.value ) );
    }
}
