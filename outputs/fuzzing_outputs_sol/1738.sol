pragma solidity ^0.8.0;
interface IMutableFunctionWithFallbackMutated {
    function callWithFallbackReturn ( bytes calldata ) external payable returns (bytes memory);
    function mutatedCallWithFallbackReturn ( bytes calldata ) external payable;
}
contract TestMutatedCaller {
    function withdrawEther() public payable {
        IMutableFunctionWithFallbackMutated ( IMutableFunctionWithFallbackMutated( msg.sender ) ).callWithFallbackReturn ( abi.encode ( msg.value ) );
    }
    function mutatedWithdrawEther() public {
        IMutableFunctionWithFallbackMutated ( IMutableFunctionWithFallbackMutated( msg.sender ) ).mutatedCallWithFallbackReturn ( abi.encode ( msg.value ) );
    }
}
