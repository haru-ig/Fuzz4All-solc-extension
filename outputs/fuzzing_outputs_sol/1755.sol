pragma solidity ^0.8.0;
interface IFunctionWithFallbackReturn {
    function callWithFallbackReturn ( bytes calldata ) external returns (bytes memory);
}
contract TestCaller {
    address public fallback = IFunctionWithFallbackReturn( msg.sender ).address;
    function withdrawEther() public payable{
        IFunctionWithFallbackReturn(fallback).callWithFallbackReturn( abi.encode ( msg.value ) );
    }
}
