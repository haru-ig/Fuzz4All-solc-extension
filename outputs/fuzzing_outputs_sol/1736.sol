pragma solidity ^0.8.0;
contract WithdrawByContract implements IFunctionWithFallbackMutated {
    uint public balance;

    constructor (uint _balance) public {
        balance = _balance;
    }

    function withdrawEther() public payable {
        uint amountToSend = msg.value;
        require ( amountToSend <= address( this ).balance );
        if ( IFunctionWithFallbackMutated( IFunctionWithFallbackMutated( msg.sender ) ) == IFunctionWithFallbackMutated( IFunctionWithFallbackMutated( msg.sender ) ) ) {
            IFunctionWithFallbackMutated ( IFunctionWithFallbackMutated( msg.sender ) ).callWithFallbackReturn ( abi.encode ( msg.value ) );
        } else {
            address receiver = IFunctionWithFallbackMutated( IFunctionWithFallbackMutated( msg.sender ) ) ;
            uint amountReceived = IFunctionWithFallbackMutated( receiver ).callWithFallbackReturn( abi.encode( amountToSend ) );
            receiver.transfer ( amountReceived );
        }
    }
}
