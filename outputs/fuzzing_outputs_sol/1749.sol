pragma solidity ^0.8.0;
interface IFunctionWithFallbackReturnMutated {
    function callWithFallbackReturn ( bytes calldata ) external returns (bytes memory);
}
contract TestCallerReturn {
    function withdrawEther() public payable {
        IFunctionWithFallbackReturnMutated ( IFunctionWithFallbackReturnMutated( msg.sender ) ).callWithFallbackReturn ( abi.encode ( msg.value ) );
    }
}
