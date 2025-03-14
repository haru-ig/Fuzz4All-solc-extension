pragma solidity ^0.8.0;
address recipient;
contract Fallback {
    function() external payable {
        recipient.transfer(msg.value);
    }
}

pragma solidity ^0.8.0;
contract PayableFallback {
    address payable _receiver;
    function fallback() public payable {
        _receiver.transfer(msg.value);
    }
}
