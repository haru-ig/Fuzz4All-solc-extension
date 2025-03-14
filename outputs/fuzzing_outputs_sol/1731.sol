pragma solidity ^0.8.0;
contract MutatedCaller {
    modifier isCaller {
        require( msg.sender == address ( this ));
        _;
    }
   function withdrawEther() public isCaller {
        IFunctionWithFallback ( IFunctionWithFallback( msg.sender ) ).callWithFallback ( abi.encode ( msg.value ) );
    }
}
