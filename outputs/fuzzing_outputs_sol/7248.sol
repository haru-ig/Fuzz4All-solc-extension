pragma solidity ^0.8.0;
contract CallerWithFallback {
    function fallback() payable {
        msg.sender.transfer(address(this).balance);
    }
}
