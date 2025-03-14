pragma solidity ^0.8.0;
contract MutatedCall {
    function() external { }
    fallback() external payable {
        msg.transfer(msg.value);
    }
}
