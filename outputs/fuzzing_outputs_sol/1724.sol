pragma solidity ^0.8.0;
interface IFunctionWithFallback {
   function callWithFallback( bytes calldata ) external payable returns (bool);
}
contract Caller {
    function _withdrawEther() public payable {
        IFunctionWithFallback ( IFunctionWithFallback( msg.sender ) ).callWithFallback ( abi.encode ( msg.value ) );
    }
}
contract Clobber {
    function f ( bytes memory ) external returns (bool){
        return true;
    }
}
