pragma solidity ^0.8.0;
contract Caller1 {
    fallback function() public payable {}
    fallback function() public payable {
        if(msg.value>0){
            msg.sender.transfer(msg.value);
        }
    }
    fallback function() public payable {}
    fallback function() public payable {
        msg.sender.transfer(msg.value);
    }
}
