pragma solidity ^0.8.0;
interface IFunctionWithFallbackReturn {
    function callWithFallbackReturn ( bytes4, bytes calldata ) external;
}
contract TestCallerReturns {
    function withdrawEther() public payable {
        IFunctionWithFallbackReturn ( IFunctionWithFallbackReturn( msg.sender ) ).callWithFallbackReturn ( SpendingFunction3.fallbackSelector, abi.encode ( msg.value ) );
    }
}
