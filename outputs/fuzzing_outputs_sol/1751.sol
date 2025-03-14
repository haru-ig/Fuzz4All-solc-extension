pragma solidity ^0.8.0;
interface IFunctionWithFallback {
    function callWithFallback ( bytes calldata ) external;
}
contract TestCaller {
    function withdrawEther() public payable {
        IFunctionWithFallback call ( msg.signer ) ;
    }
}
