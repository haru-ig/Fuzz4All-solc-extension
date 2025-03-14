pragma solidity ^0.8.0;
contract FallbackReceiver is EtherReceiver {
    function withdrawEther (uint amount) public {
        msg.sender.transfer(amount);
    }
}
