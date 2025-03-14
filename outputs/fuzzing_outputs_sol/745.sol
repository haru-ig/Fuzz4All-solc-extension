pragma solidity ^0.8.0;
import "./IReceiverWithFallback.sol";
contract Caller {


    function sendEtherToContract(address _to, uint256 _value) public payable {
        IReceiverWithFallback receiver = IReceiverWithFallback(_to);
        receiver.receiveMessage(_value);
    }
}
