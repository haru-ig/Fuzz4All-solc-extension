pragma solidity ^0.8.0;
interface IFunctionWithFallback {
    function callWithFallback ( bytes calldata ) external payable returns (bool);
}
contract Caller {
    function _withdrawEther () internal {
        IFunctionWithFallback( msg.sender ).callWithFallback ( abi.encode( msg.value) );
    }
}
