pragma solidity ^0.8.0;
interface IFunctionWithReceive {
    function callWithReceive ( bytes calldata ) external payable returns (bool);
}
contract Caller {
    function _withdrawEther ( address to ) internal {
        IFunctionWithReceive( to ).callWithReceive ( abi.encode( msg.value) );
    }
}
