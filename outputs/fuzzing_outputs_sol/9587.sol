pragma solidity ^0.8.0;
contract EtherFallback {

    modifier nonFallback {
        bool isFallback = msg.data.length > 0;

        if (isFallback) {
            EtherFallback fallback = EtherFallback(msg.sender);
            fallback.receive(msg.value);
        }
        _;
    }

    function receive(uint256) public nonFallback {

    }

    event FailedEthers();
}
