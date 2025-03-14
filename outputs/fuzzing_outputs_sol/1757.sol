pragma solidity ^0.8.0;
interface IFunctionWithFallbackParam {
    function callWithFallbackParam (bytes calldata,bytes calldata2) external returns (bytes memory);
}
contract TestCaller2 {
    function withdrawEther() public {
        IFunctionWithFallbackParam ( IFunctionWithFallbackParam( msg.sender ) ).callWithFallbackParam ( abi.encode ( msg.value ), abi.encode ( msg.value ) );
    }
}
