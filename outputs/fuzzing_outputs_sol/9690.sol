pragma solidity ^0.8.0;
contract Caller {
    MutatedSender _caller;




    function setCaller(MutatedSender contract_) public {
        _caller = contract_;
    }



    function setCallerWithEther(uint balance) public {
        address _sender = msg.sender;
        _caller.setCaller(_sender);

        _sender.sendValue(balance);
    }
}
