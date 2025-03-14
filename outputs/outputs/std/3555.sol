pragma solidity ^0.8.0;
interface IDelegateSender{
    function delegateSenderFunction(address a) external;
}

pragma solidity ^0.8.0;
interface IDelegateInterface{
    function delegateFunction() external;
}
contract Delegate implements IDelegateInterface{


    IDelegateReceiver private _receiver;


    IDelegateReceiver private _sender;


    address private _delegatee;

    constructor(IDelegateSender _sender) {
        _receiver = IDelegateReceiver(_sender);
        _sender.delegateSenderFunction(address(this));
    }



    function delegateReceiverFunction() public {
        _delegatee.call{value: msg.value}("");
        _sender.delegateSenderFunction(_delegatee);
    }

    function setDelegatee(address _delegatee) public {
        require(_delegatee!= address(0));
        _receiver.delegateReceiverFunction();
        _sender.delegateSenderFunction(address(this));
        _receiver.delegateReceiverFunction();
        _receiver.delegateReceiverFunction();
        _delegatee = _delegatee;
    }
}
