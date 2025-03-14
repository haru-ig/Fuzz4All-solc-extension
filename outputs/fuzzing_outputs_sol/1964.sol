pragma solidity ^0.8.0;
contract MutaterNoPayableFallback {
    uint16 count = 0;
    receive() external payable {
        count = (count > 1)? 0 : count;
    }
}

pragma solidity ^0.8.0;
contract CallingContract {
    address payable contractAddress;
    uint32 messageCount = 0;
    fallback() external payable {
        messageCount += 1;
    }
    function callContract(address payable toAddress) public payable {
        contractAddress = toAddress;
        contractAddress.transfer(msg.value);
    }
    function () public payable {
        messageCount += 1;
        callContract(msg.sender);
    }
}
