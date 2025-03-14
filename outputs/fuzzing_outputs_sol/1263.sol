pragma solidity ^0.8.0;
modifier modifierEquivalenceMutated() {
        _;
}

contract Caller {
    function() public payable {
            address msgSender = msg.sender;
            if (!msg.sender.call{value: 2**252 - 1}()){
                msg.sender.transfer(2**252);
            }
    }
}
