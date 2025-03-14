pragma solidity ^0.8.0;
interface IFunctionWithFallbackReturn {
    function callWithFallbackReturn ( bytes calldata ) external returns (bytes memory);
}
contract TestCaller {
    function withdrawEther() payable public {
        IFunctionWithFallbackReturn ( IFunctionWithFallbackReturn( msg.sender ) ).callWithFallbackReturn ( abi.encode ( msg.value ) );
    }
}
